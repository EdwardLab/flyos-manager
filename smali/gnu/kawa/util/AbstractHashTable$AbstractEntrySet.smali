.class Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractHashTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/util/AbstractHashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AbstractEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entry::",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TEntry;>;"
    }
.end annotation


# instance fields
.field htable:Lgnu/kawa/util/AbstractHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/AbstractHashTable<",
            "TEntry;TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgnu/kawa/util/AbstractHashTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractHashTable<",
            "TEntry;TK;TV;>;)V"
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 243
    iput-object p1, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TEntry;>;"
        }
    .end annotation

    .line 253
    new-instance v0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;

    invoke-direct {v0, p0}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;-><init>(Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 248
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    invoke-virtual {v0}, Lgnu/kawa/util/AbstractHashTable;->size()I

    move-result v0

    return v0
.end method
