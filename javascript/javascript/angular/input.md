# @İnput

Parentten child componente veri taşınabilir.

[https://angular.io/guide/inputs-outputs](https://angular.io/guide/inputs-outputs)

![](<../../../.gitbook/assets/Screen Shot 2022-05-13 at 01.10.53.png>)



#### Configuring the child component <a href="#configuring-the-child-component" id="configuring-the-child-component"></a>

To use the `@`[`Input`](https://angular.io/api/core/Input)`()` decorator in a child component class, first import [`Input`](https://angular.io/api/core/Input) and then decorate the property with `@`[`Input`](https://angular.io/api/core/Input)`()`, as in the following example.

src/app/item-detail/item-detail.component.ts

```
content_copyimport { Component, Input } from '@angular/core'; // First, import Input
export class ItemDetailComponent {
  @Input() item = ''; // decorate the property with @Input()
}
```

In this case, `@`[`Input`](https://angular.io/api/core/Input)`()` decorates the property `item`, which has a type of `string`, however, `@`[`Input`](https://angular.io/api/core/Input)`()` properties can have any type, such as `number`, `string`, `boolean`, or `object`. The value for `item` comes from the parent component.

Next, in the child component template, add the following:

src/app/item-detail/item-detail.component.html

```
content_copy<p>
  Today's item: {{item}}
</p>
```

#### Configuring the parent component <a href="#configuring-the-parent-component" id="configuring-the-parent-component"></a>

The next step is to bind the property in the parent component's template. In this example, the parent component template is `app.component.html`.

1. Use the child's selector, here `<app-item-detail>`, as a directive within the parent component template.
2.  Use [property binding](https://angular.io/guide/property-binding) to bind the `item` property in the child to the `currentItem` property of the parent.

    src/app/app.component.html

    ```
    content_copy<app-item-detail [item]="currentItem"></app-item-detail>
    ```
3.  In the parent component class, designate a value for `currentItem`:

    src/app/app.component.ts

    ```
    content_copyexport class AppComponent {
      currentItem = 'Television';
    ```
