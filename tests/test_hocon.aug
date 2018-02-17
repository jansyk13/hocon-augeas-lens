module Test_hocon = 

let conf_basic1 ="{
  \"foo\" : {
    \"bar\" : 10,
    \"baz\" : 12
  }
}"

let conf_basic2 ="\"foo\" : {
  \"bar\" : 10,
  \"baz\" : 12
}"

let conf_basi3 ="foo : {
  bar : 10,
  baz : 12
}"

let conf_basic4 ="foo {
  bar = 10,
  baz = 12
}"

let conf_basic5 ="foo {
  bar = 10
  baz = 12
}"

let conf_basic6 ="foo.bar=10
foo.baz=12"

let conf_basic7 ="foo.bar=10, foo.baz=12"
 
test Hocon.lns get conf_basic1 =
  { "dict"
    { "entry" = "foo"
      { "dict"
        { "entry" = "bar" 
          { "number" = 10 }
        { "entry" = "baz" 
          { "number" = 12 } } } } } }

test Hocon.lns get conf_basic2 =
  { "dict"
    { "entry" = "foo"
      { "dict"
        { "entry" = "bar" 
          { "number" = 10 }
        { "entry" = "baz" 
          { "number" = 12 } } } } } }

test Hocon.lns get conf_basic3 =
  { "dict"
    { "entry" = "foo"
      { "dict"
        { "entry" = "bar" 
          { "number" = 10 }
        { "entry" = "baz" 
          { "number" = 12 } } } } } }

test Hocon.lns get conf_basic4 =
  { "dict"
    { "entry" = "foo"
      { "dict"
        { "entry" = "bar" 
          { "number" = 10 }
        { "entry" = "baz" 
          { "number" = 12 } } } } } }

test Hocon.lns get conf_basic5 =
  { "dict"
    { "entry" = "foo"
      { "dict"
        { "entry" = "bar" 
          { "number" = 10 }
        { "entry" = "baz" 
          { "number" = 12 } } } } } }

test Hocon.lns get conf_basic6 =
  { "dict"
    { "entry" = "foo"
      { "dict"
        { "entry" = "bar" 
          { "number" = 10 }
        { "entry" = "baz" 
          { "number" = 12 } } } } } }

test Hocon.lns get conf_basic6 =
  { "dict"
    { "entry" = "foo"
      { "dict"
        { "entry" = "bar" 
          { "number" = 10 }
        { "entry" = "baz" 
          { "number" = 12 } } } } } }
