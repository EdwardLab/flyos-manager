.class Lcom/onesignal/BundleCompatFactory;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/onesignal/BundleCompat;
    .locals 2

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 209
    new-instance v0, Lcom/onesignal/BundleCompatPersistableBundle;

    invoke-direct {v0}, Lcom/onesignal/BundleCompatPersistableBundle;-><init>()V

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Lcom/onesignal/BundleCompatBundle;

    invoke-direct {v0}, Lcom/onesignal/BundleCompatBundle;-><init>()V

    return-object v0
.end method
