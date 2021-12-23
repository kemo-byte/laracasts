<?php

namespace Tests\Unit;
namespace App\Http\Controllers;

use PHPUnit\Framework\TestCase;

class ExampleTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    // public function test_example()
    // {
    //     $this->assertTrue(true);
    // }
 
    /** @test */
    public function add_two_numbers_function() 
    {
        // $s = new Sum();
       
        $s = (new Sum())->add(1,4);
        
        $this->assertEquals($s,5);
    }
}
