.class public Lgnu/mapping/WrongType;
.super Lgnu/mapping/WrappedException;
.source "WrongType.java"


# static fields
.field public static final ARG_CAST:I = -0x4

.field public static final ARG_DESCRIPTION:I = -0x3

.field public static final ARG_UNKNOWN:I = -0x1

.field public static final ARG_VARNAME:I = -0x2


# instance fields
.field public argValue:Ljava/lang/Object;

.field public expectedType:Ljava/lang/Object;

.field public number:I

.field public proc:Lgnu/mapping/Procedure;

.field public procname:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lgnu/mapping/WrappedException;-><init>()V

    .line 86
    iput p1, p0, Lgnu/mapping/WrongType;->number:I

    .line 87
    iput-object p2, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V
    .locals 0

    .line 54
    invoke-direct {p0, p3}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    iput-object p1, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 56
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 57
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/Object;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lgnu/mapping/WrappedException;-><init>()V

    .line 69
    iput-object p1, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 70
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 71
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 72
    iput-object p3, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lgnu/mapping/WrappedException;-><init>()V

    .line 77
    iput-object p1, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 78
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 79
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 80
    iput-object p3, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 81
    iput-object p4, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 93
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)V
    .locals 0

    .line 63
    invoke-direct {p0, p2, p3, p1}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    .line 64
    iput-object p4, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 115
    invoke-direct {p0, p2, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V

    .line 116
    iput-object p4, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V
    .locals 0

    .line 107
    invoke-direct {p0, p3}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    .line 108
    iput-object p1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 109
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lgnu/mapping/WrappedException;-><init>()V

    .line 99
    iput-object p1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 100
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 101
    iput-object p3, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 102
    iput-object p4, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iput-object p1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 48
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 49
    iput-object p3, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    return-void
.end method

.method public static make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;I)Lgnu/mapping/WrongType;
    .locals 1

    .line 122
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p2, p0}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    return-object v0
.end method

.method public static make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)Lgnu/mapping/WrongType;
    .locals 1

    .line 135
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p2, p0}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    .line 136
    iput-object p3, v0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    return-object v0
.end method

.method public static make(Ljava/lang/ClassCastException;Ljava/lang/String;I)Lgnu/mapping/WrongType;
    .locals 1

    .line 128
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V

    return-object v0
.end method

.method public static make(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)Lgnu/mapping/WrongType;
    .locals 1

    .line 144
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V

    .line 145
    iput-object p3, v0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 8

    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 152
    iget v1, p0, Lgnu/mapping/WrongType;->number:I

    const/4 v2, -0x2

    const/4 v3, -0x3

    if-ne v1, v3, :cond_0

    .line 154
    iget-object v1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/4 v4, -0x4

    if-eq v1, v4, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Argument "

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    iget v1, p0, Lgnu/mapping/WrongType;->number:I

    if-lez v1, :cond_3

    const/16 v1, 0x23

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    iget v1, p0, Lgnu/mapping/WrongType;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "Value"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    :cond_3
    :goto_1
    iget-object v1, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    const-string v4, ")"

    const-string v5, " ("

    if-eqz v1, :cond_5

    .line 171
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    iget-object v1, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x32

    if-le v6, v7, :cond_4

    const/4 v6, 0x0

    const/16 v7, 0x2f

    .line 175
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "..."

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 179
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_5
    iget-object v1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget v1, p0, Lgnu/mapping/WrongType;->number:I

    if-eq v1, v3, :cond_7

    if-ne v1, v2, :cond_6

    const-string v1, " for variable \'"

    goto :goto_3

    :cond_6
    const-string v1, " to \'"

    .line 184
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    iget-object v1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\'"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    const-string v1, " has wrong type"

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    iget-object v1, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 191
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v1, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_8
    iget-object v1, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    if-nez v1, :cond_9

    .line 196
    iget v2, p0, Lgnu/mapping/WrongType;->number:I

    if-lez v2, :cond_9

    iget-object v3, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    instance-of v6, v3, Lgnu/mapping/MethodProc;

    if-eqz v6, :cond_9

    .line 197
    check-cast v3, Lgnu/mapping/MethodProc;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_c

    .line 198
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v1, v2, :cond_c

    const-string v2, " (expected: "

    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    instance-of v2, v1, Lgnu/bytecode/Type;

    if-eqz v2, :cond_a

    .line 202
    check-cast v1, Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 203
    :cond_a
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_b

    .line 204
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_b
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :cond_c
    invoke-virtual {p0}, Lgnu/mapping/WrongType;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 211
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 214
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
