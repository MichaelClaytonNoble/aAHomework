

function titleize(names_a){

  return names_a.map( x=>{ return x.slice(0,1).toUpperCase() + x.slice(1,x.length).toLowerCase();});

}