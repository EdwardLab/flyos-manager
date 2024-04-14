.class public Lgnu/kawa/functions/GetNamedInstancePart;
.super Lgnu/mapping/ProcedureN;
.source "GetNamedInstancePart.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/mapping/HasSetter;


# instance fields
.field isField:Z

.field pname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 25
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileNamedPart:validateGetNamedInstancePart"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/GetNamedInstancePart;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lgnu/kawa/functions/GetNamedInstancePart;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lgnu/kawa/functions/GetNamedInstancePart;->setPartName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 54
    array-length v0, p1

    invoke-static {p0, v0}, Lgnu/kawa/functions/GetNamedInstancePart;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 55
    iget-boolean v0, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 56
    aget-object p1, p1, v1

    iget-object v0, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-static {p1, v0}, Lgnu/kawa/reflect/SlotGet;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    array-length v0, p1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    aget-object v3, p1, v1

    aput-object v3, v0, v1

    .line 61
    iget-object v1, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 62
    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    sget-object p1, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {p1, v0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 2

    .line 69
    iget-boolean v0, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lgnu/kawa/functions/SetNamedInstancePart;

    iget-object v1, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v0, v1}, Lgnu/kawa/functions/SetNamedInstancePart;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no setter for instance method call"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public numArgs()I
    .locals 1

    .line 50
    iget-boolean v0, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1001

    goto :goto_0

    :cond_0
    const/16 v0, -0xfff

    :goto_0
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

    .line 82
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgnu/kawa/functions/GetNamedInstancePart;->setPartName(Ljava/lang/String;)V

    return-void
.end method

.method public setPartName(Ljava/lang/String;)V
    .locals 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get-instance-part:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/functions/GetNamedInstancePart;->setName(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_0

    .line 40
    iput-boolean v2, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_0
    iput-boolean v1, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    .line 46
    iput-object p1, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
