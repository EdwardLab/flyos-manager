.class public Lorg/jose4j/lang/BouncyCastleProviderHelp;
.super Ljava/lang/Object;
.source "BouncyCastleProviderHelp.java"


# static fields
.field private static final BC_PROVIDER_FQCN:Ljava/lang/String; = "org.bouncycastle.jce.provider.BouncyCastleProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableBouncyCastleProvider()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    .line 28
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 30
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    .line 32
    invoke-virtual {v1, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    return v0
.end method
