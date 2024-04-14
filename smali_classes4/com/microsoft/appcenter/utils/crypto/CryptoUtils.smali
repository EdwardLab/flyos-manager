.class public Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;,
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;,
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;,
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;,
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    }
.end annotation


# static fields
.field static final DEFAULT_CRYPTO_FACTORY:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

.field private static final M_KEY_EXPIRED_EXCEPTION:Ljava/lang/String; = "android.security.keystore.KeyExpiredException"

.field private static sInstance:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;


# instance fields
.field private final mApiLevel:I

.field private final mContext:Landroid/content/Context;

.field private final mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

.field private final mCryptoHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->DEFAULT_CRYPTO_FACTORY:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->DEFAULT_CRYPTO_FACTORY:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;-><init>(Landroid/content/Context;Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cryptoFactory",
            "apiLevel"
        }
    .end annotation

    const-string v0, "AppCenter"

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    .line 170
    iput p3, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mApiLevel:I

    const/4 p1, 0x0

    :try_start_0
    const-string p2, "AndroidKeyStore"

    .line 175
    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, p2

    :catch_1
    const-string p2, "Cannot use secure keystore on this device."

    .line 178
    invoke-static {v0, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p1

    .line 180
    :goto_0
    iput-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    if-eqz p2, :cond_0

    const/16 p1, 0x17

    if-lt p3, p1, :cond_0

    .line 185
    :try_start_2
    new-instance p1, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;

    invoke-direct {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;-><init>()V

    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->registerHandler(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V

    .line 186
    new-instance p1, Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;

    invoke-direct {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;-><init>()V

    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->registerHandler(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    const-string p1, "Cannot use modern encryption on this device."

    .line 188
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 199
    :try_start_3
    new-instance p1, Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;

    invoke-direct {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;-><init>()V

    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->registerHandler(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    const-string p1, "Cannot use old encryption on this device."

    .line 201
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    :goto_2
    new-instance p1, Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;

    invoke-direct {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;-><init>()V

    .line 207
    iget-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;-><init>(ILcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "index"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appcenter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDecryptedData(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;ILjava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cryptoHandler",
            "aliasIndex",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/security/KeyStore$Entry;

    move-result-object p2

    .line 386
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    iget v1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mApiLevel:I

    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->decrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B

    move-result-object p2

    .line 387
    new-instance p3, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p3, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 389
    iget-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    iget-object p2, p2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    if-eq p1, p2, :cond_0

    .line 390
    invoke-virtual {p0, p3}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 392
    :goto_0
    new-instance p2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    invoke-direct {p2, p3, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->sInstance:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->sInstance:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    .line 220
    :cond_0
    sget-object p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->sInstance:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    return-object p0
.end method

.method private getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/security/KeyStore$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cryptoHandler",
            "aliasIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 274
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/lang/String;

    move-result-object p1

    .line 275
    iget-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p2, p1, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    return-object p1
.end method

.method private getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;)Ljava/security/KeyStore$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handlerEntry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    iget-object v0, p1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    iget p1, p1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    invoke-direct {p0, v0, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/security/KeyStore$Entry;

    move-result-object p1

    return-object p1
.end method

.method private registerHandler(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, p1, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 235
    invoke-direct {p0, p1, v2}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/lang/String;

    move-result-object v3

    .line 236
    iget-object v4, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v1}, Ljava/security/KeyStore;->getCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 237
    iget-object v5, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v3}, Ljava/security/KeyStore;->getCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 240
    invoke-virtual {v5, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    const/4 v0, 0x1

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const-string v3, "AppCenter"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating alias: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    iget-object v4, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mContext:Landroid/content/Context;

    invoke-interface {p1, v2, v1, v4}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->generateKey(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;Ljava/lang/String;Landroid/content/Context;)V

    .line 252
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    invoke-direct {v3, v0, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;-><init>(ILcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 352
    new-instance p1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    invoke-direct {p1, v0, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v1, ":"

    .line 356
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 357
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    move-object v3, v0

    goto :goto_1

    .line 358
    :cond_2
    iget-object v3, v2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    :goto_1
    const-string v4, "Failed to decrypt data."

    const-string v5, "AppCenter"

    if-nez v3, :cond_3

    .line 362
    invoke-static {v5, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    invoke-direct {v1, p1, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    const/4 v6, 0x1

    .line 368
    :try_start_0
    iget v7, v2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    aget-object v8, v1, v6

    invoke-direct {p0, v3, v7, v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getDecryptedData(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;ILjava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 373
    :catch_0
    :try_start_1
    iget v2, v2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    xor-int/2addr v2, v6

    aget-object v1, v1, v6

    invoke-direct {p0, v3, v2, v1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getDecryptedData(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;ILjava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 377
    :catch_1
    invoke-static {v5, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    invoke-direct {v1, p1, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "AppCenter"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 292
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    .line 293
    iget-object v2, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    :try_start_1
    invoke-direct {p0, v1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    .line 298
    iget-object v4, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    iget v5, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mApiLevel:I

    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v2, v4, v5, v3, v6}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->encrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B

    move-result-object v3

    const/4 v4, 0x0

    .line 299
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception v3

    .line 312
    :try_start_2
    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateExpiredException;

    if-nez v4, :cond_2

    const-string v4, "android.security.keystore.KeyExpiredException"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    throw v3

    .line 313
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alias expired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget v3, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    xor-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    .line 315
    iget v1, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    invoke-direct {p0, v2, v1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;I)Ljava/lang/String;

    move-result-object v1

    .line 318
    iget-object v3, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v3, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 324
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    iget-object v4, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v1, v4}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->generateKey(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;Ljava/lang/String;Landroid/content/Context;)V

    .line 328
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    const-string v1, "Failed to encrypt data."

    .line 336
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method getCryptoFactory()Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    return-object v0
.end method
