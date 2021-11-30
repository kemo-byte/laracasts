<x-layout>

  <section class="px-6 py-8">
    <x-panel class="max-w-sm mx-auto">
      <form  action="/admin/posts" method="post">
        @csrf
        <div class="mb-6">
        	<label class="block mb-2 uppercase font-bold text-xs text-gray-700"
            	for="title"
            >
          Title
          </label>

          <input class="border border-gray-400 p-2 w-full"
          	type="text"
          	name="title"
            value="{{ old('title') }}"
          	id="title"
          	required
          >
          @error('title')
          <p class="text-red-500 text-xs mt-2">{{ $message }}</p>
          @enderror
      </div>

      <div class="mb-6">
        <label class="block mb-2 uppercase font-bold text-xs text-gray-700"
            for="slug"
          >
        Slug
        </label>

        <textarea class="border border-gray-400 p-2 w-full"
          type="text"
          name="slug"
          value="{{ old('slug') }}"
          id="slug"
          required
        ></textarea>
        @error('slug')
        <p class="text-red-500 text-xs mt-2">{{ $message }}</p>
        @enderror
      </div>


      <div class="mb-6">
        <label class="block mb-2 uppercase font-bold text-xs text-gray-700"
            for="excerpt"
          >
        Excerpt
        </label>

        <textarea class="border border-gray-400 p-2 w-full"
          type="text"
          name="excerpt"
          value="{{ old('excerpt') }}"
          id="excerpt"
          required
        ></textarea>
        @error('excerpt')
        <p class="text-red-500 text-xs mt-2">{{ $message }}</p>
        @enderror
    </div>

    <div class="mb-6">
      <label class="block mb-2 uppercase font-bold text-xs text-gray-700"
          for="body"
        >
      Body
      </label>

      <textarea class="border border-gray-400 p-2 w-full"
        type="text"
        name="body"
        id="body"

        required
      > {{ old('body') }}</textarea>
      @error('body')
      <p class="text-red-500 text-xs mt-2">{{ $message }}</p>
      @enderror
  </div>

      <div class="mb-6">
        <label class="block mb-2 uppercase font-bold text-xs text-gray-700"
            for="category_id"
          >
        Category
        </label>

        <select
         name="category_id" id="category_id">

          @foreach (\App\Models\Category::all() as $category)
          	<option value="{{ $category->id }}"
                {{ old("category_id") == $category->id ? "selected" :"" }}
              > {{ $category->name }}</option>
          @endforeach

        </select>
        @error('category_id')
        <p class="text-red-500 text-xs mt-2">{{ $message }}</p>
        @enderror
    </div>


      <x-submit-button>Publish</x-submit-button>
      </form>


    </x-panel>
  </section>

</x-layout>
