.class Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CryptoHandlerEntry"
.end annotation


# instance fields
.field mAliasIndex:I

.field final mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;


# direct methods
.method constructor <init>(ILcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aliasIndex",
            "cryptoHandler"
        }
    .end annotation

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput p1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    .line 497
    iput-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    return-void
.end method
