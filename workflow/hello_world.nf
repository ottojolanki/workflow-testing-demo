process say_hello {
    publishDir = [
        path: { "${params.outdir}/"}
    ]
    output:
    path 'hello.txt'

    script:
    """
    echo 'Hello, World!' > hello.txt
    """
}

workflow {
    say_hello()
}
