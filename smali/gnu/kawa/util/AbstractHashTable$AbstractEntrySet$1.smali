.class Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;
.super Ljava/lang/Object;
.source "AbstractHashTable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TEntry;>;"
    }
.end annotation


# instance fields
.field curIndex:I

.field currentEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEntry;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEntry;"
        }
    .end annotation
.end field

.field nextIndex:I

.field previousEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEntry;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;


# direct methods
.method constructor <init>(Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 259
    iput p1, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->curIndex:I

    return-void
.end method

.method private advance()V
    .locals 2

    .line 279
    :goto_0
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextIndex:I

    if-ltz v0, :cond_0

    .line 281
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    iget-object v0, v0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    iget-object v0, v0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    iget v1, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 269
    iget v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->curIndex:I

    if-gez v0, :cond_0

    .line 271
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    iget-object v0, v0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    iget-object v0, v0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    array-length v0, v0

    iput v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextIndex:I

    .line 272
    iput v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->curIndex:I

    .line 273
    invoke-direct {p0}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->advance()V

    .line 275
    :cond_0
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEntry;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->currentEntry:Ljava/util/Map$Entry;

    iput-object v1, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->previousEntry:Ljava/util/Map$Entry;

    .line 290
    iput-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->currentEntry:Ljava/util/Map$Entry;

    .line 291
    iget v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextIndex:I

    iput v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->curIndex:I

    .line 292
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    iget-object v0, v0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    iget-object v1, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->currentEntry:Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    .line 293
    invoke-direct {p0}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->advance()V

    .line 294
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->currentEntry:Ljava/util/Map$Entry;

    return-object v0

    .line 288
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 298
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->previousEntry:Ljava/util/Map$Entry;

    iget-object v1, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->currentEntry:Ljava/util/Map$Entry;

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    iget-object v0, v0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    iget-object v0, v0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    iget v1, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->curIndex:I

    iget-object v2, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    aput-object v2, v0, v1

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    iget-object v0, v0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    iget-object v1, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->previousEntry:Ljava/util/Map$Entry;

    iget-object v2, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 304
    :goto_0
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    iget-object v0, v0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    iget v1, v0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    .line 305
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->currentEntry:Ljava/util/Map$Entry;

    iput-object v0, p0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->previousEntry:Ljava/util/Map$Entry;

    return-void

    .line 299
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
