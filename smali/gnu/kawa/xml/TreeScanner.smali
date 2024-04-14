.class public abstract Lgnu/kawa/xml/TreeScanner;
.super Lgnu/mapping/MethodProc;
.source "TreeScanner.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public type:Lgnu/lists/NodePredicate;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 22
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.xml.CompileXmlFunctions:validateApplyTreeScanner"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/TreeScanner;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/lists/PositionConsumer;

    .line 38
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 43
    :try_start_0
    check-cast v1, Lgnu/kawa/xml/KNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    iget-object p1, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v1}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lgnu/kawa/xml/TreeScanner;->scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V

    return-void

    .line 47
    :catch_0
    new-instance p1, Lgnu/mapping/WrongType;

    invoke-virtual {p0}, Lgnu/kawa/xml/TreeScanner;->getDesc()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x4

    const-string v3, "node()"

    invoke-direct {p1, v0, v2, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "::"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodePredicate()Lgnu/lists/NodePredicate;
    .locals 1

    .line 28
    iget-object v0, p0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    return-object v0
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x1001

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/NodePredicate;

    iput-object p1, p0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    return-void
.end method

.method public abstract scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
