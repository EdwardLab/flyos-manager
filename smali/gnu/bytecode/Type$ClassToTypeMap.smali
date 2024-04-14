.class Lgnu/bytecode/Type$ClassToTypeMap;
.super Lgnu/kawa/util/AbstractWeakHashTable;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/bytecode/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassToTypeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/AbstractWeakHashTable<",
        "Ljava/lang/Class;",
        "Lgnu/bytecode/Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 618
    invoke-direct {p0}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>()V

    return-void
.end method


# virtual methods
.method protected getKeyFromValue(Lgnu/bytecode/Type;)Ljava/lang/Class;
    .locals 0

    .line 622
    iget-object p1, p1, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    return-object p1
.end method

.method protected bridge synthetic getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 618
    check-cast p1, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1}, Lgnu/bytecode/Type$ClassToTypeMap;->getKeyFromValue(Lgnu/bytecode/Type;)Ljava/lang/Class;

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
