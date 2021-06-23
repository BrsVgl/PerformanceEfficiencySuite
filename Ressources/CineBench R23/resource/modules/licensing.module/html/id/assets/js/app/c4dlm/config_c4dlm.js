/**
 * @file [c4dlm.config] Configuration.
 */
var c4dlm = c4dlm || {};
c4dlm.config = {
    global: {
        paths: {
            images: "assets/img/"
        },
        logLevel: 0,
        injectCSS: false
    },
    components: {
        header: {
            brandingUrl: "https://www.maxon.net",
            brandingImage: {
                url: "logo.png",
                alt: "Maxon.net"
            }
        }
    },
    idpUrl: "https://id.villa.maxon.net",
    baseUrl: "https://account.villa.maxon.net/id",
    clientkey: "key-bbe8de74518babfcd5c27980b809fb8f4451dafb0e697fb5a998261cb3504094",
    me: "me",
    clearUrl: true,
    allowOldIds: false,
    allowNewIds: true,
    isAdmin: false
};