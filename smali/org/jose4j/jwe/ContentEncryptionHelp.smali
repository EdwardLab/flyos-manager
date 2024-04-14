.class Lorg/jose4j/jwe/ContentEncryptionHelp;
.super Ljava/lang/Object;
.source "ContentEncryptionHelp.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static choseContext(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jca/ProviderContext$Context;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "alg"

    .line 43
    invoke-virtual {p0, v0}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dir"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p1}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static getCipherProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lorg/jose4j/jwe/ContentEncryptionHelp;->choseContext(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lorg/jose4j/jca/ProviderContext$Context;->getCipherProvider()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getMacProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lorg/jose4j/jwe/ContentEncryptionHelp;->choseContext(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lorg/jose4j/jca/ProviderContext$Context;->getMacProvider()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
