class Object {
  value: any;
  proto: Object;
  slots: [];
  constructor(prototype=null, value=null) {
    this.proto = prototype;
    this.value = value;
    this.slots = [];
  }

  slot(name: string): any {
    return this.slots[name];
  }

  def(name: string, func: (any) => any) {
    this.slots[name] = func;
  }

  call(): this {
    return this
  }

  clone(value=null): Object {
    return new Object(this, value);
  }
}

export { Object }
