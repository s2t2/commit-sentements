
## Installation

```` rb
bundle install
````
## Usage

```` rb
ruby parse.rb
````

Example output:

````
--->> ruby parse.rb
Training analyser with +ve sentiment
+ve sentiment training complete
Training analyser with -ve sentiment
-ve sentiment training complete
{"text"=>"i am so happy", "probability"=>0.628618568162954, "sentiment"=>":)"}
{"text"=>"i am so sad", "probability"=>0.016786469585532652, "sentiment"=>":("}
{"text"=>"its sad to see you go",
 "probability"=>0.04107082306191367,
 "sentiment"=>":("}
{"text"=>
  "its sad to see you go, but i'm the most happy i've ever been now that you are leaving",
 "probability"=>0.023771487556116983,
 "sentiment"=>":("}
{"text"=>"you're the most hoorible person I've ever met",
 "probability"=>0.8448020706683853,
 "sentiment"=>":)"}

````
