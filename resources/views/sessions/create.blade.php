<x-layout>
  <section class="px-6 py-8">
    <main class="max-w-lg mx-auto mt-10 bg-gray-100 border border-gray-200 p-8 rounded-xl">
      <h1 class="text-center text-xl font-bold">Login</h1>

      <form class="mt-10" action="/login" method="POST">

        @csrf
        <div class="mb-6">
          <label for="email" class="block mb-2 uppercase font-bold text-xs text-gray-700">email</label>
          <input type="email" class="border border-gray-400 p-2 w-full" name="email" value="{{old('email')}}" id="email" required>
          @error('email')
            <p class="text-red-500 text-xs mt-1">{{ $message }} </p>
          @enderror
        </div>
        
        <div class="mb-6">
          <label for="password" class="block mb-2 uppercase font-bold text-xs text-gray-700">password</label>
          <input type="password" class="border border-gray-400 p-2 w-full" name="password" value="" id="password" required>
          @error('password')
            <p class="text-red-500 text-xs mt-1">{{ $message }} </p>

          @enderror
        </div>

        <div class="mb-6">
          <input type="submit" value="Log In" class="bg-blue-400 text-white rounded py-2 px-4 hover:bg-blue-500" name="login" id="login">
        </div>


    </main>
  </section>
</x-layout>
