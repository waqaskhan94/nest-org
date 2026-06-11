const fs = require('fs');
const files = [
  'index.html','about.html','contact.html',
  'gallery.html','programs.html','therapies.html'
];
let changed = 0;
files.forEach(f => {
  let c = fs.readFileSync(f, 'utf8');
  let orig = c;

  // 1. Add margin-bottom:0 to .faq-a so browser default <p> margin doesn't add extra space
  c = c.replace(
    /\.faq-a\{color:var\(--muted\);font-size:0\.84rem;margin-top:0\.6rem;line-height:1\.65;display:none\}/g,
    '.faq-a{color:var(--muted);font-size:0.84rem;margin-top:0.5rem;margin-bottom:0;line-height:1.6;display:none}'
  );

  // 2. Add align-items:start to .faq-grid so items don't stretch to match open sibling height
  c = c.replace(
    /\.faq-grid\{display:grid;grid-template-columns:1fr 1fr;gap:0\.85rem;margin-top:2\.5rem\}/g,
    '.faq-grid{display:grid;grid-template-columns:1fr 1fr;gap:0.85rem;margin-top:2.5rem;align-items:start}'
  );

  if (c !== orig) {
    fs.writeFileSync(f, c, 'utf8');
    console.log('Fixed: ' + f);
    changed++;
  } else {
    console.log('No match (check manually): ' + f);
  }
});
console.log('Done. ' + changed + ' file(s) updated.');
