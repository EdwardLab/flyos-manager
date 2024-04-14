.class public final Lcom/google/appinventor/common/version/GitBuildId;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANT_BUILD_DATE:Ljava/lang/String; = "March 31 2024"

.field public static final GIT_BUILD_FINGERPRINT:Ljava/lang/String; = "a745e2605d4392a37899931114b3fa5ad01d039d"

.field public static final GIT_BUILD_VERSION:Ljava/lang/String; = "1.5C.3-Fenix"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDate()Ljava/lang/String;
    .locals 1

    const-string v0, "March 31 2024"

    return-object v0
.end method

.method public static getFingerprint()Ljava/lang/String;
    .locals 1

    const-string v0, "a745e2605d4392a37899931114b3fa5ad01d039d"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "1.5C.3-Fenix"

    const-string v1, ""

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "none"

    return-object v0
.end method
