<x-layout>

<section class="px-6 py-8">

	@include('posts._header')

<main class="max-w-6xl mx-auto mt-6 lg:mt-20 space-y-6">
 	@if ($posts->count())

   		<x-posts-grid :posts="$posts" />

			<div class="">
				{{	$posts->links()	}}
			</div>


	@else

	<p class="text-lg text-center "> No posts yet </p>
	@endif
    {{-- <div class="lg:grid lg:grid-cols-3">
   		<x-post-card />
   		<x-post-card />
   		<x-post-card />
    </div> --}}
</main>


</section>
</x-layout>
