module.exports = {
    adminAuth: {
        type: "credentials",
        users: [{
            username: "WasteLog",
            password: "$2a$12$GHbrRt1oMgmc1OfhIZfYjeHc6JwbeY92WScs./C1fYjw.vaRj4KeK",
            permissions: "*"
        }]
    },

    contextStorage: {
        default: {
            module: "localfilesystem"
        }
    }
};
