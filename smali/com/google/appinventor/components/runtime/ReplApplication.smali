.class public Lcom/google/appinventor/components/runtime/ReplApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static installed:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 44
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->install(Landroid/content/Context;Z)Z

    move-result p1

    sput-boolean p1, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    return-void
.end method
