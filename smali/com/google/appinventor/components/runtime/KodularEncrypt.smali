.class public Lcom/google/appinventor/components/runtime/KodularEncrypt;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component which performs several encrypt/decrypt functions"
    helpUrl = "https://docs.kodular.io/components/storage/cryptography/"
    iconName = "images/encrypt.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "javax-xml-bind.jar",
        "apache-xerces.jar"
    }
.end annotation


# instance fields
.field private AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:I

.field private HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:I

.field private KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:I

.field private MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Ljava/lang/String;

.field private ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

.field private xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const v0, 0xfa00

    .line 31
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:I

    const/16 v0, 0x18

    .line 32
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:I

    const/16 v0, 0x12

    .line 33
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:I

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Ljava/lang/String;

    const/16 v1, 0xa

    .line 35
    iput v1, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:I

    .line 36
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->context:Landroid/content/Context;

    const-string p1, "Kodular Encrypt"

    const-string v0, "Kodular Encrypt Component Created"

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AES128Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given hash using the given key through AES-128. If any exception occurs, returns empty string."
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES128;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public AES128Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Encodes the given string using the given key through AES-128. If any exception occurs, returns empty string."
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES128;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public AES128GenKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a secure random AES 128 key"
    .end annotation

    .line 316
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES128;->generateKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public AES128Key()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the AES-128 Key"
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Ljava/lang/String;

    return-object v0
.end method

.method public AES128Key(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the AES-128 Key"
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:Ljava/lang/String;

    return-void
.end method

.method public AES256Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given hash using the given key through AES-256. If there are any exceptions, returns empty string"
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->context:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->decode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public AES256Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Encodes the given string using the given key through AES-256. If there are any exceptions, returns empty string"
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->context:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES256;->encode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public AES256GenKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a secure random AES 256 key"
    .end annotation

    .line 321
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/crypt/KodularAES128;->generateKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public AES256Key()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the AES-256 Key"
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

    return-object v0
.end method

.method public AES256Key(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the AES-256 Key"
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Ljava/lang/String;

    return-void
.end method

.method public BCryptCreateHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hash using BCrypt"
    .end annotation

    .line 234
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularBCrypt;->hashPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 236
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Kodular Encrypt"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public BCryptGenerateSalt()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a salt usable for hashing with BCrypt"
    .end annotation

    .line 244
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:I

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/crypt/KodularBCrypt;->gensalt(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 246
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kodular Encrypt"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method public BCryptSaltSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the BCrypt Salt Size"
    .end annotation

    .line 112
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:I

    return v0
.end method

.method public BCryptSaltSize(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the BCrypt Salt Size"
    .end annotation

    .line 106
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:I

    return-void
.end method

.method public BCryptVerifyPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Verifies if the input password is the same one as the correct hashed password using BCrypt algorithm"
    .end annotation

    .line 224
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularBCrypt;->checkPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 226
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Kodular Encrypt"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public Base64Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given hash using Base64"
    .end annotation

    .line 182
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularBase64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 184
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Encrypt"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public Base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Encodes the given string using Base64"
    .end annotation

    .line 192
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularBase64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 194
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Encrypt"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public Enigma(Ljava/lang/String;IIILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Encrypts or decrypts the given string simulating an Enigma machine. Rotors can go from 1 to 8, but they cannot be repeated. Reflector can be B, C or 0 if none. Plugboard is a list with sub-list of two items containing a character each one, which replace the first character with the second one."
    .end annotation

    const-string v0, ""

    .line 368
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move-object v4, v0

    const/4 v3, 0x0

    .line 370
    :goto_0
    invoke-virtual {p6}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 371
    invoke-virtual {p6, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    .line 372
    instance-of v6, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v6, :cond_1

    .line 373
    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 374
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 375
    invoke-virtual {v5, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 376
    invoke-virtual {v5, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 377
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "Sub-item does not have two items"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    const-string p1, "Sub-item not a list"

    return-object p1

    .line 386
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 p6, 0x8

    if-gt p2, p6, :cond_6

    if-gt p3, p6, :cond_6

    if-gt p4, p6, :cond_6

    if-lez p2, :cond_6

    if-lez p3, :cond_6

    if-gtz p4, :cond_3

    goto :goto_1

    :cond_3
    const-string p6, "B"

    if-eq p5, p6, :cond_4

    const-string p6, "C"

    if-eq p5, p6, :cond_4

    const-string p6, "0"

    if-eq p5, p6, :cond_4

    const-string p1, "Reflector has to be B, C or 0 8 (none)"

    return-object p1

    .line 394
    :cond_4
    :try_start_2
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->pbParser(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_5

    const-string p1, "Duplicated entries in plugboard"

    return-object p1

    :cond_5
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 397
    invoke-static/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->encrypt(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    const-string p1, "Rotors has to be between 1 and 8"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 399
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Kodular Encrypt"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public MD5CreateHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a MD5 hash"
    .end annotation

    .line 171
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularMD5;->createHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 173
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Encrypt"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public PBKDF2CreateHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hash using PBKDF2"
    .end annotation

    .line 160
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:I

    invoke-static {p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->createHash(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 162
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Encrypt"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public PBKDF2HashByteSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the PBKDF2 Hash Byte Size"
    .end annotation

    .line 84
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:I

    return v0
.end method

.method public PBKDF2HashByteSize(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "18"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the PBKDF2 Hash Byte Size"
    .end annotation

    .line 78
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:I

    return-void
.end method

.method public PBKDF2Iterations()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the PBKDF2 number of Iterations"
    .end annotation

    .line 58
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:I

    return v0
.end method

.method public PBKDF2Iterations(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "64000"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the PBKDF2 number of Iterations"
    .end annotation

    .line 52
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:I

    return-void
.end method

.method public PBKDF2SaltByteSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the PBKDF2 Salt Byte Size"
    .end annotation

    .line 71
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:I

    return v0
.end method

.method public PBKDF2SaltByteSize(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "24"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the PBKDF2 Salt Byte Size"
    .end annotation

    .line 65
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:I

    return-void
.end method

.method public PBKDF2VerifyPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Verifies if the input password is the same one as the correct hashed password using PBKDF2 algorithm"
    .end annotation

    .line 150
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularPBKDF2;->verifyPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 152
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Kodular Encrypt"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hashed SHA-1 string"
    .end annotation

    .line 255
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularSHA1;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 257
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Encrypt"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public SHA224(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hashed SHA-224 string"
    .end annotation

    .line 265
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularSHA224;->sha224(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 267
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Encrypt"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public SHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hashed SHA-256 string"
    .end annotation

    .line 275
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularSHA256;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 277
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Encrypt"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public SHA384(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hashed SHA-384 string"
    .end annotation

    .line 285
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularSHA384;->sha384(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 287
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Encrypt"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public SHA512(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generates a hashed SHA-512 string"
    .end annotation

    .line 295
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularSHA512;->sha512(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 297
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Encrypt"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public TripleDESDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given hash using the given key through TripleDES"
    .end annotation

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/crypt/KodularTripleDES;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 205
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Encrypt"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public TripleDESEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Encodes the given string using the given key through TripleDES"
    .end annotation

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/crypt/KodularTripleDES;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 215
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Encrypt"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public TripleDESKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the TripleDES Key"
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Ljava/lang/String;

    return-object v0
.end method

.method public TripleDESKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the TripleDES Key"
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularEncrypt;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:Ljava/lang/String;

    return-void
.end method
