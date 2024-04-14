.class public Lgnu/bytecode/LocalVarsAttr;
.super Lgnu/bytecode/Attribute;
.source "LocalVarsAttr.java"


# instance fields
.field public current_scope:Lgnu/bytecode/Scope;

.field private method:Lgnu/bytecode/Method;

.field parameter_scope:Lgnu/bytecode/Scope;

.field used:[Lgnu/bytecode/Variable;


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 1

    const-string v0, "LocalVariableTable"

    .line 23
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Lgnu/bytecode/LocalVarsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 25
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->getContainer()Lgnu/bytecode/AttrContainer;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Method;

    iput-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    .line 26
    iput-object p0, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 1

    const-string v0, "LocalVariableTable"

    .line 32
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v0, p1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    .line 34
    iput-object p1, p0, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    .line 35
    iput-object p0, v0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    return-void
.end method


# virtual methods
.method public allVars()Lgnu/bytecode/VarEnumerator;
    .locals 2

    .line 42
    new-instance v0, Lgnu/bytecode/VarEnumerator;

    iget-object v1, p0, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    invoke-direct {v0, v1}, Lgnu/bytecode/VarEnumerator;-><init>(Lgnu/bytecode/Scope;)V

    return-object v0
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 108
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v0

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 114
    iget v2, v1, Lgnu/bytecode/Variable;->name_index:I

    if-nez v2, :cond_1

    .line 115
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v2

    iget v2, v2, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v2, v1, Lgnu/bytecode/Variable;->name_index:I

    .line 116
    :cond_1
    iget v2, v1, Lgnu/bytecode/Variable;->signature_index:I

    if-nez v2, :cond_0

    .line 117
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v2

    iget v2, v2, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v2, v1, Lgnu/bytecode/Variable;->signature_index:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public enterScope(Lgnu/bytecode/Scope;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    invoke-virtual {p1, v0}, Lgnu/bytecode/Scope;->linkChild(Lgnu/bytecode/Scope;)V

    .line 47
    iput-object p1, p0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 48
    iget-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 51
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isAssigned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1

    .line 55
    :cond_0
    iget-object v1, p0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    iget v2, p1, Lgnu/bytecode/Variable;->offset:I

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    iget v2, p1, Lgnu/bytecode/Variable;->offset:I

    aput-object p1, v1, v2

    goto :goto_1

    .line 57
    :cond_1
    iget-object v1, p0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    iget v2, p1, Lgnu/bytecode/Variable;->offset:I

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inconsistent local variable assignments for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    iget p1, p1, Lgnu/bytecode/Variable;->offset:I

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object p1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final getCount()I
    .locals 3

    .line 89
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v0

    const/4 v1, 0x0

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v2}, Lgnu/bytecode/Variable;->shouldEmit()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getLength()I
    .locals 1

    .line 101
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getMethod()Lgnu/bytecode/Method;
    .locals 1

    .line 38
    iget-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 3

    .line 76
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v0

    .line 78
    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public preserveVariablesUpto(Lgnu/bytecode/Scope;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    :goto_0
    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, v0, Lgnu/bytecode/Scope;->preserved:Z

    .line 70
    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 4

    .line 147
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v0

    const-string v1, "Attribute \""

    .line 148
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v1, "\", length:"

    .line 150
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v1, ", count: "

    .line 152
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 156
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->reset()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 158
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "  slot#"

    .line 160
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 161
    iget v2, v1, Lgnu/bytecode/Variable;->offset:I

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v2, ": name: "

    .line 162
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 163
    iget v2, v1, Lgnu/bytecode/Variable;->name_index:I

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 164
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v2, ", type: "

    .line 165
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 166
    iget v2, v1, Lgnu/bytecode/Variable;->signature_index:I

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 167
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    const-string v2, " (pc: "

    .line 168
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object v1, v1, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    if-eqz v1, :cond_2

    .line 171
    iget-object v2, v1, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    iget v2, v2, Lgnu/bytecode/Label;->position:I

    if-ltz v2, :cond_2

    iget-object v1, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    iget v1, v1, Lgnu/bytecode/Label;->position:I

    if-gez v1, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v3, " length: "

    .line 178
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    sub-int/2addr v1, v2

    .line 179
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "unknown"

    .line 174
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    :goto_2
    const/16 v1, 0x29

    .line 181
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 129
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->reset()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->shouldEmit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, v1, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    .line 134
    iget-object v3, v2, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    iget v3, v3, Lgnu/bytecode/Label;->position:I

    .line 135
    iget-object v2, v2, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    iget v2, v2, Lgnu/bytecode/Label;->position:I

    .line 136
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    sub-int/2addr v2, v3

    .line 137
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 138
    iget v2, v1, Lgnu/bytecode/Variable;->name_index:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 139
    iget v2, v1, Lgnu/bytecode/Variable;->signature_index:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 140
    iget v1, v1, Lgnu/bytecode/Variable;->offset:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
