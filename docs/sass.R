library(sass)

variable =
"
$body-bg: black;
"

rule =
"
.remark-slide-content {
    background-color: $body-bg;
    font-family: 'Cascadia code';
}

.title-slide {
    background-image: url('https://i.pinimg.com/originals/f3/b4/23/f3b4238175fc8c88229595b50f514d09.gif');
    background-size: contain;
    color: white;
    background-color: black;
}
"
