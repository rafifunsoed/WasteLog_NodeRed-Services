module.exports = {
    // Bagian yang sudah ada sebelumnya
    adminAuth: {
        type: "credentials",
        users: [{
            username: "WasteLog",
            password: "$2a$12$GHbrRt1oMgmc1OfhIZfYjeHc6JwbeY92WScs./C1fYjw.vaRj4KeK",
            permissions: "*"
        }]
    },

    // --- TAMBAHAN BARU DI SINI ---
    // Mengaktifkan penyimpanan context ke file di disk
    contextStorage: {
        default: {
            module: "localfilesystem"
        }
    }
};
