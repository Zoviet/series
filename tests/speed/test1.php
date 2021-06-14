<?php
for($size = 1000; $size < 50000000; $size *= 2) {     
    for($s = microtime(true), $container = new SplFixedArray($size), $i = 0; $i < $size; $i++) $container[$i] = NULL;
    $two = (microtime(true) - $s);
}
?> 
