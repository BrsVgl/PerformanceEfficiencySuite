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
    idpUrl: "https://id.maxon.net",
    baseUrl: "https://account.villa.maxon.net/my",
    clientkey: "4c0d3543-cff0-4bf6-a24a-b7ad4d980e95",
    me: "me",
    clearUrl: true,
    allowOldIds: false,
    allowNewIds: true,
    isAdmin: false
};