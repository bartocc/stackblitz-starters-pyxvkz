# Reproduction steps

[![Open in StackBlitz](https://developer.stackblitz.com/img/open_in_stackblitz.svg)](https://stackblitz.com/edit/stackblitz-starters-pyxvkz)

## Expected behaviour

The built file `my-addon/dist/index.js` should contain

```js
import Component from '@glimmer/component';

class Foo extends Component {}

export { Foo as default };
//# sourceMappingURL=index.js.map
```

## Actual behaviour

The built file `my-addon/dist/index.js` will contain

```js
import '@glint/template';
import Component from '@glimmer/component';

class Foo extends Component {}

export { Foo as default };
//# sourceMappingURL=index.js.map
```

The line `import '@glint/template';` should not be there
