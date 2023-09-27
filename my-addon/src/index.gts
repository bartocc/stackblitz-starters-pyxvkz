import type { WithBoundArgs } from '@glint/template';

import Component from '@glimmer/component';

interface BarSignature {
  Args: { name: string };
}
interface FooSignature {
  Blocks: { default: [WithBoundArgs<typeof Bar, 'name'>] };
}

class Bar extends Component<BarSignature> {}
export default class Foo extends Component<FooSignature> {}
