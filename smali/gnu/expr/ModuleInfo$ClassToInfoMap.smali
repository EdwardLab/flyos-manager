.class Lgnu/expr/ModuleInfo$ClassToInfoMap;
.super Lgnu/kawa/util/AbstractWeakHashTable;
.source "ModuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/expr/ModuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassToInfoMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/AbstractWeakHashTable<",
        "Ljava/lang/Class;",
        "Lgnu/expr/ModuleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 460
    invoke-direct {p0}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>()V

    return-void
.end method


# virtual methods
.method protected getKeyFromValue(Lgnu/expr/ModuleInfo;)Ljava/lang/Class;
    .locals 0

    .line 464
    iget-object p1, p1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    return-object p1
.end method

.method protected bridge synthetic getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 460
    check-cast p1, Lgnu/expr/ModuleInfo;

    invoke-virtual {p0, p1}, Lgnu/expr/ModuleInfo$ClassToInfoMap;->getKeyFromValue(Lgnu/expr/ModuleInfo;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected matches(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
