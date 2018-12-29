# Noble

A minimal homoiconic scripting language written in TypeScript.

## Building

```sh
$ yarn run build
$ yarn start
```

## Language
```
"hello, world" print()

# Message "hello, world"
# └─Message print

1 +(2)
# Message 1
# └─Message +
#   └─Message 2
```
