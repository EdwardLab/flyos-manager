.class Lgnu/xquery/util/DistinctValuesConsumer;
.super Lgnu/lists/FilterConsumer;
.source "DistinctValues.java"

# interfaces
.implements Lgnu/lists/PositionConsumer;


# instance fields
.field table:Lgnu/xquery/util/DistinctValuesHashTable;


# direct methods
.method public constructor <init>(Lgnu/xquery/util/NamedCollator;Lgnu/lists/Consumer;)V
    .locals 0

    .line 115
    invoke-direct {p0, p2}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 116
    new-instance p2, Lgnu/xquery/util/DistinctValuesHashTable;

    invoke-direct {p2, p1}, Lgnu/xquery/util/DistinctValuesHashTable;-><init>(Lgnu/xquery/util/NamedCollator;)V

    iput-object p2, p0, Lgnu/xquery/util/DistinctValuesConsumer;->table:Lgnu/xquery/util/DistinctValuesHashTable;

    return-void
.end method


# virtual methods
.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 131
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 2

    .line 136
    instance-of v0, p1, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p1, p0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    return-void

    .line 141
    :cond_0
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_1

    .line 143
    check-cast p1, Lgnu/kawa/xml/KNode;

    .line 144
    iget-object v0, p1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget p1, p1, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, p1}, Lgnu/xml/NodeTree;->typedValue(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lgnu/xquery/util/DistinctValuesConsumer;->table:Lgnu/xquery/util/DistinctValuesHashTable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgnu/xquery/util/DistinctValuesHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lgnu/xquery/util/DistinctValuesConsumer;->table:Lgnu/xquery/util/DistinctValuesHashTable;

    invoke-virtual {v0, p1, p1}, Lgnu/xquery/util/DistinctValuesHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lgnu/xquery/util/DistinctValuesConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 0

    .line 126
    check-cast p1, Lgnu/xml/NodeTree;

    invoke-virtual {p1, p2}, Lgnu/xml/NodeTree;->typedValue(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
