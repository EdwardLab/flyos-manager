.class public Lcom/google/appinventor/components/runtime/util/PackageInstaller;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 1

    .line 32
    new-instance v0, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;

    invoke-direct {v0, p1, p0}, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;-><init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method
