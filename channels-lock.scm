(list (channel
        (name 'flat)
        (url "https://github.com/flatwhatson/guix-channel.git")
        (branch "master")
        (commit
          "d95204cc50de4c3a7abcbff86cfec7d5eed43a7e")
        (introduction
          (make-channel-introduction
            "33f86a4b48205c0dc19d7c036c85393f0766f806"
            (openpgp-fingerprint
              "736A C00E 1254 378B A982  7AF6 9DBE 8265 81B6 4490"))))
      (channel
        (name 'nonguix)
        (url "https://gitlab.com/nonguix/nonguix")
        (branch "master")
        (commit
          "ec7c7b852c024095e4f34523452230406a3b4549"))
      (channel
        (name 'nano-channel)
        (url "file:///home/nanounanue/projects/nano-channel")
        (branch "main")
        (commit
          "b451baf27dce7a8cfcdf5f46099a163a2b03dd75"))
      (channel
        (name 'guix)
        (url "https://git.savannah.gnu.org/git/guix.git")
        (branch "master")
        (commit
          "af207dd46d0dff09736fa87131387f32ac811024")
        (introduction
          (make-channel-introduction
            "9edb3f66fd807b096b48283debdcddccfea34bad"
            (openpgp-fingerprint
              "BBB0 2DDF 2CEA F6A8 0D1D  E643 A2A0 6DF2 A33A 54FA")))))
