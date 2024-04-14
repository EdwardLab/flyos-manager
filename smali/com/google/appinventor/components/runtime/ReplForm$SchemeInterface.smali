.class public Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ReplForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SchemeInterface"
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm;

.field hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "scheme"

    .line 66
    invoke-static {p1}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

    .line 68
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    return-void
.end method

.method static synthetic wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0()V
    .locals 3

    .line 1071
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1072
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 1073
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 1074
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public eval(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm;

    new-instance v1, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;-><init>(Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ReplForm;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
