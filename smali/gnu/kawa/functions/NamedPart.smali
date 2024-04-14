.class Lgnu/kawa/functions/NamedPart;
.super Lgnu/mapping/ProcedureN;
.source "GetNamedPart.java"

# interfaces
.implements Lgnu/mapping/HasSetter;
.implements Ljava/io/Externalizable;


# instance fields
.field container:Ljava/lang/Object;

.field kind:C

.field member:Ljava/lang/Object;

.field methods:Lgnu/mapping/MethodProc;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;C)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 144
    iput-object p1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    .line 145
    iput-object p2, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    .line 146
    iput-char p3, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    .line 147
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p2, "gnu.kawa.functions.CompileNamedPart:validateNamedPart"

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/NamedPart;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;CLgnu/mapping/MethodProc;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    .line 155
    iput-object p4, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/kawa/functions/NamedPart;->apply([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public apply([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 176
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/MethodProc;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d

    if-ne v0, v1, :cond_1

    .line 180
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    .line 181
    new-array v1, v1, [Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 183
    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object p1, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    invoke-virtual {p1, v1, p2}, Lgnu/mapping/MethodProc;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/kawa/functions/NamedPart;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 195
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x43

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x49

    if-eq v0, v1, :cond_3

    const/16 v1, 0x53

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    .line 202
    array-length v0, p1

    add-int/2addr v0, v3

    new-array v0, v0, [Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aput-object v1, v0, v2

    .line 204
    array-length v1, p1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    sget-object p1, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {p1, v0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 220
    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown part "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_1
    array-length v0, p1

    add-int/2addr v0, v3

    new-array v0, v0, [Ljava/lang/Object;

    .line 210
    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aput-object v1, v0, v2

    .line 211
    array-length v1, p1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget-object p1, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    invoke-virtual {p1, v0}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 207
    :cond_2
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    invoke-virtual {v0, p1}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 198
    :cond_3
    sget-object v0, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    aget-object p1, p1, v2

    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lgnu/kawa/reflect/InstanceOf;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 214
    :cond_4
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    array-length v1, p1

    if-nez v1, :cond_5

    .line 216
    iget-object p1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    check-cast p1, Lgnu/bytecode/ClassType;

    invoke-static {p1, v0}, Lgnu/kawa/reflect/SlotGet;->staticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 218
    :cond_5
    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    check-cast v1, Lgnu/bytecode/Type;

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lgnu/kawa/reflect/SlotGet;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 200
    :cond_6
    sget-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lgnu/kawa/functions/Convert;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 3

    .line 225
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    .line 226
    new-instance v0, Lgnu/kawa/functions/NamedPartSetter;

    invoke-direct {v0, p0}, Lgnu/kawa/functions/NamedPartSetter;-><init>(Lgnu/kawa/functions/NamedPart;)V

    return-object v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procedure \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/kawa/functions/NamedPart;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' has no setter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public numArgs()I
    .locals 2

    .line 160
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x49

    if-eq v0, v1, :cond_2

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    const/16 v0, 0x1000

    return v0

    :cond_1
    const/16 v0, -0x1000

    return v0

    :cond_2
    :goto_0
    const/16 v0, 0x1001

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 268
    invoke-interface {p1}, Ljava/io/ObjectInput;->readChar()C

    move-result v0

    iput-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    .line 269
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    iput-object v0, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    .line 270
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/mapping/Procedure;

    iput-object p1, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    return-void
.end method

.method public set0(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 233
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-static {v1, v0, p1}, Lgnu/kawa/reflect/SlotSet;->setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 240
    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid setter for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 246
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    check-cast v1, Lgnu/bytecode/Type;

    invoke-virtual {v1, p1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 251
    invoke-static {p1, v0, p2}, Lgnu/kawa/reflect/SlotSet;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid setter for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 262
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    return-void
.end method
