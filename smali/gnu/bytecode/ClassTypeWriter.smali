.class public Lgnu/bytecode/ClassTypeWriter;
.super Ljava/io/PrintWriter;
.source "ClassTypeWriter.java"


# static fields
.field public static final PRINT_CONSTANT_POOL:I = 0x1

.field public static final PRINT_CONSTANT_POOL_INDEXES:I = 0x2

.field public static final PRINT_EXTRAS:I = 0x8

.field public static final PRINT_VERBOSE:I = 0xf

.field public static final PRINT_VERSION:I = 0x4


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field flags:I


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 37
    iput-object p1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 38
    iput p3, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 30
    iput-object p1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 31
    iput p3, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    return-void
.end method

.method public static print(Lgnu/bytecode/ClassType;Ljava/io/PrintStream;I)V
    .locals 1

    .line 55
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    invoke-direct {v0, p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    .line 56
    invoke-virtual {v0}, Lgnu/bytecode/ClassTypeWriter;->print()V

    .line 57
    invoke-virtual {v0}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    return-void
.end method

.method public static print(Lgnu/bytecode/ClassType;Ljava/io/PrintWriter;I)V
    .locals 1

    .line 48
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    invoke-direct {v0, p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    .line 49
    invoke-virtual {v0}, Lgnu/bytecode/ClassTypeWriter;->print()V

    .line 50
    invoke-virtual {v0}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    return-void
.end method


# virtual methods
.method getCpoolEntry(I)Lgnu/bytecode/CpoolEntry;
    .locals 2

    .line 210
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v0, v0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 211
    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public print()V
    .locals 1

    .line 62
    iget v0, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const-string v0, "Classfile format major version: "

    .line 64
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getClassfileMajorVersion()S

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, ", minor version: "

    .line 66
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getClassfileMinorVersion()S

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const/16 v0, 0x2e

    .line 68
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 70
    :cond_0
    iget v0, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printConstantPool()V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printClassInfo()V

    .line 73
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printFields()V

    .line 74
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printMethods()V

    .line 75
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printAttributes()V

    return-void
.end method

.method public print(Lgnu/bytecode/ClassType;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 86
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->print()V

    return-void
.end method

.method public printAttributes()V
    .locals 2

    .line 91
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 92
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    const-string v1, "Attributes (count: "

    .line 93
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lgnu/bytecode/Attribute;->count(Lgnu/bytecode/AttrContainer;)I

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v1, "):"

    .line 95
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    return-void
.end method

.method public printAttributes(Lgnu/bytecode/AttrContainer;)V
    .locals 0

    .line 101
    invoke-interface {p1}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1, p0}, Lgnu/bytecode/Attribute;->print(Lgnu/bytecode/ClassTypeWriter;)V

    .line 102
    iget-object p1, p1, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printClassInfo()V
    .locals 5

    .line 110
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    const-string v0, "Access flags:"

    .line 111
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v0

    const/16 v1, 0x43

    .line 113
    invoke-static {v0, v1}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    const-string v0, "This class: "

    .line 115
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 117
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    const-string v0, " super: "

    .line 118
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->superClassIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v0, "<unknown>"

    .line 120
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->superClassIndex:I

    if-nez v0, :cond_1

    const-string v0, "0"

    .line 122
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 126
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 128
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    const-string v0, "Interfaces (count: "

    .line 129
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    .line 131
    :cond_2
    array-length v3, v0

    .line 132
    :goto_1
    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v4, "):"

    .line 133
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    :goto_2
    if-ge v2, v3, :cond_3

    const-string v4, "- Implements: "

    .line 137
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 138
    aget v4, v0, v2

    .line 139
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 140
    invoke-virtual {p0, v4, v1}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 141
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method final printConstantOperand(I)V
    .locals 2

    const/16 v0, 0x20

    .line 251
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 252
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 253
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v0, v0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 255
    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    .line 260
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    const/4 v0, 0x1

    .line 261
    invoke-virtual {p1, p0, v0}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    const/16 p1, 0x3e

    .line 262
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "<invalid constant index>"

    .line 257
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public printConstantPool()V
    .locals 5

    .line 291
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v0, v0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 292
    iget-object v1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v1, v1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v1, v1, Lgnu/bytecode/ConstantPool;->count:I

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 295
    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x23

    .line 298
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 299
    iget v4, v3, Lgnu/bytecode/CpoolEntry;->index:I

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v4, ": "

    .line 300
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 301
    invoke-virtual {v3, p0, v4}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 302
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final printConstantTersely(II)V
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->getCpoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(Lgnu/bytecode/CpoolEntry;I)V

    return-void
.end method

.method final printConstantTersely(Lgnu/bytecode/CpoolEntry;I)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "<invalid constant index>"

    .line 220
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v0

    if-eq v0, p2, :cond_1

    const-string p2, "<unexpected constant type "

    .line 223
    invoke-virtual {p0, p2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 224
    invoke-virtual {p1, p0, p2}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    const/16 p1, 0x3e

    .line 225
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 228
    invoke-virtual {p1, p0, p2}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    :goto_0
    return-void
.end method

.method final printContantUtf8AsClass(I)V
    .locals 3

    .line 238
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->getCpoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 241
    check-cast v0, Lgnu/bytecode/CpoolUtf8;

    iget-object p1, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1, p0}, Lgnu/bytecode/Type;->printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0, p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    :goto_0
    return-void
.end method

.method public printFields()V
    .locals 3

    .line 147
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    const-string v0, "Fields (count: "

    .line 148
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->fields_count:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, "):"

    .line 150
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 153
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "Field name: "

    .line 156
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 157
    iget v1, v0, Lgnu/bytecode/Field;->name_index:I

    if-eqz v1, :cond_0

    .line 158
    iget v1, v0, Lgnu/bytecode/Field;->name_index:I

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 159
    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 160
    iget v1, v0, Lgnu/bytecode/Field;->flags:I

    const/16 v2, 0x46

    invoke-static {v1, v2}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v1, " Signature: "

    .line 161
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 162
    iget v1, v0, Lgnu/bytecode/Field;->signature_index:I

    if-eqz v1, :cond_1

    .line 163
    iget v1, v0, Lgnu/bytecode/Field;->signature_index:I

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 164
    :cond_1
    iget-object v1, v0, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 165
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 166
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 154
    iget-object v0, v0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public printMethod(Lgnu/bytecode/Method;)V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    const-string v0, "Method name:"

    .line 185
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 186
    iget v0, p1, Lgnu/bytecode/Method;->name_index:I

    if-eqz v0, :cond_0

    .line 187
    iget v0, p1, Lgnu/bytecode/Method;->name_index:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    :cond_0
    const/16 v0, 0x22

    .line 188
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 189
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 191
    iget v0, p1, Lgnu/bytecode/Method;->access_flags:I

    const/16 v1, 0x4d

    invoke-static {v0, v1}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v0, " Signature: "

    .line 192
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 193
    iget v0, p1, Lgnu/bytecode/Method;->signature_index:I

    if-eqz v0, :cond_1

    .line 194
    iget v0, p1, Lgnu/bytecode/Method;->signature_index:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    :cond_1
    const/16 v0, 0x28

    .line 195
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    const/4 v0, 0x0

    .line 196
    :goto_0
    iget-object v1, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    if-lez v0, :cond_2

    const/16 v1, 0x2c

    .line 199
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 200
    :cond_2
    iget-object v1, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x29

    .line 202
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 203
    iget-object v0, p1, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 204
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 205
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    return-void
.end method

.method public printMethods()V
    .locals 1

    .line 172
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    const-string v0, "Methods (count: "

    .line 173
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->methods_count:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, "):"

    .line 175
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 177
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    :goto_0
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printMethod(Lgnu/bytecode/Method;)V

    .line 178
    iget-object v0, v0, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_0

    :cond_0
    return-void
.end method

.method printName(Ljava/lang/String;)V
    .locals 0

    .line 324
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final printOptionalIndex(I)V
    .locals 1

    .line 308
    iget v0, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    .line 310
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 311
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const/16 p1, 0x3d

    .line 312
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    :cond_0
    return-void
.end method

.method public final printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V
    .locals 0

    .line 318
    iget p1, p1, Lgnu/bytecode/CpoolEntry;->index:I

    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    return-void
.end method

.method public final printQuotedString(Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x22

    .line 268
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 272
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_0

    const-string v3, "\\\""

    .line 274
    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    .line 276
    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_2

    :cond_1
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    const-string v3, "\\n"

    .line 278
    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v4, "\\u"

    .line 281
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x4

    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    mul-int/lit8 v5, v4, 0x4

    shr-int v5, v3, v5

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0x10

    .line 283
    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    return-void
.end method

.method public final printSignature(Ljava/lang/String;I)I
    .locals 4

    .line 333
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    const-string p1, "<empty signature>"

    .line 336
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    return p2

    .line 339
    :cond_0
    invoke-static {p1, p2}, Lgnu/bytecode/Type;->signatureLength(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/2addr v1, p2

    .line 342
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/bytecode/Type;->signatureToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 345
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    return v1

    .line 349
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_2

    .line 352
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_2
    const/4 v2, 0x0

    add-int/lit8 p2, p2, 0x1

    .line 357
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    :goto_0
    if-lt p2, v0, :cond_3

    const-string p1, "<truncated method signature>"

    .line 362
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    return p2

    .line 365
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_4

    add-int/lit8 p2, p2, 0x1

    .line 369
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 376
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_4
    add-int/lit8 v1, v2, 0x1

    if-lez v2, :cond_5

    const/16 v2, 0x2c

    .line 373
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 374
    :cond_5
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;I)I

    move-result p2

    move v2, v1

    goto :goto_0
.end method

.method public final printSignature(Lgnu/bytecode/Type;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "<unknown type>"

    .line 454
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final printSignature(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;I)I

    move-result v0

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, "<trailing junk:"

    .line 445
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const/16 p1, 0x3e

    .line 447
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    :cond_0
    return-void
.end method

.method public printSpaces(I)V
    .locals 1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    const/16 v0, 0x20

    .line 462
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClass(Lgnu/bytecode/ClassType;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .line 43
    iput p1, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    return-void
.end method
