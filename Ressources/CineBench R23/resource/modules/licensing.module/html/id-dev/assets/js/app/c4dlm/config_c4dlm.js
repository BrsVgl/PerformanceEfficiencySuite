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
    idpUrl: "https://id-dev.villa.maxon.net",
    baseUrl: "https://account.villa.maxon.net/id-dev",
    clientkey: "key-d0d55942-64d3-471c-9a0f-201eadcc02d6",
    me: "me",
    clearUrl: true,
    allowOldIds: false,
    allowNewIds: true,
    isAdmin: false
};