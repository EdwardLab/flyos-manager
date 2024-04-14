.class Lgnu/mapping/Environment$InheritedLocal;
.super Ljava/lang/InheritableThreadLocal;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/mapping/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InheritedLocal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal<",
        "Lgnu/mapping/Environment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 485
    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected childValue(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;
    .locals 1

    if-nez p1, :cond_0

    .line 490
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p1

    .line 491
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/Environment;->cloneForThread()Lgnu/mapping/SimpleEnvironment;

    move-result-object p1

    .line 492
    iget v0, p1, Lgnu/mapping/SimpleEnvironment;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Lgnu/mapping/SimpleEnvironment;->flags:I

    .line 493
    iget v0, p1, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p1, Lgnu/mapping/SimpleEnvironment;->flags:I

    return-object p1
.end method

.method protected bridge synthetic childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 485
    check-cast p1, Lgnu/mapping/Environment;

    invoke-virtual {p0, p1}, Lgnu/mapping/Environment$InheritedLocal;->childValue(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object p1

    return-object p1
.end method
