@props(['comment'])
<x-panel class="bg-gray-50">
  <article class="flex rounded-xl space-x-4">
    <div class="flex-shrink-0">
      <img src="http://blog1.run/images/lary-newsletter-icon.svg" alt="" height="60" width="60" class="rounded-xl">
    </div>
    <div class="">
      <header class="mb-4">
        <h3 class="font-bold">{{$comment->author->username}}</h3>
        <p class="text-xs">posted <time>{{$comment->created_at->format('F j, Y, g:i a')}}</time></p>
      </header>
      <p>{{$comment->body}}</p>
    </div>
  </article>
</x-panel>
