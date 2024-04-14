.class public Lorg/jose4j/jca/ProviderContext$Context;
.super Ljava/lang/Object;
.source "ProviderContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jca/ProviderContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Context"
.end annotation


# instance fields
.field private cipherProvider:Ljava/lang/String;

.field private generalProvider:Ljava/lang/String;

.field private keyAgreementProvider:Ljava/lang/String;

.field private keyFactoryProvider:Ljava/lang/String;

.field private keyPairGeneratorProvider:Ljava/lang/String;

.field private macProvider:Ljava/lang/String;

.field private messageDigestProvider:Ljava/lang/String;

.field private signatureProvider:Ljava/lang/String;

.field final synthetic this$0:Lorg/jose4j/jca/ProviderContext;


# direct methods
.method public constructor <init>(Lorg/jose4j/jca/ProviderContext;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/jose4j/jca/ProviderContext$Context;->this$0:Lorg/jose4j/jca/ProviderContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private select(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 275
    iget-object p1, p0, Lorg/jose4j/jca/ProviderContext$Context;->generalProvider:Ljava/lang/String;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getCipherProvider()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext$Context;->cipherProvider:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralProvider()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext$Context;->generalProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyAgreementProvider()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext$Context;->keyAgreementProvider:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyFactoryProvider()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext$Context;->keyFactoryProvider:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPairGeneratorProvider()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext$Context;->keyPairGeneratorProvider:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacProvider()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext$Context;->macProvider:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageDigestProvider()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext$Context;->messageDigestProvider:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureProvider()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext$Context;->signatureProvider:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jose4j/jca/ProviderContext$Context;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCipherProvider(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lorg/jose4j/jca/ProviderContext$Context;->cipherProvider:Ljava/lang/String;

    return-void
.end method

.method public setGeneralProvider(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/jose4j/jca/ProviderContext$Context;->generalProvider:Ljava/lang/String;

    return-void
.end method

.method public setKeyAgreementProvider(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/jose4j/jca/ProviderContext$Context;->keyAgreementProvider:Ljava/lang/String;

    return-void
.end method

.method public setKeyFactoryProvider(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/jose4j/jca/ProviderContext$Context;->keyFactoryProvider:Ljava/lang/String;

    return-void
.end method

.method public setKeyPairGeneratorProvider(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/jose4j/jca/ProviderContext$Context;->keyPairGeneratorProvider:Ljava/lang/String;

    return-void
.end method

.method public setMacProvider(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lorg/jose4j/jca/ProviderContext$Context;->macProvider:Ljava/lang/String;

    return-void
.end method

.method public setMessageDigestProvider(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lorg/jose4j/jca/ProviderContext$Context;->messageDigestProvider:Ljava/lang/String;

    return-void
.end method

.method public setSignatureProvider(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lorg/jose4j/jca/ProviderContext$Context;->signatureProvider:Ljava/lang/String;

    return-void
.end method
