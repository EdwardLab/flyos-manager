.class Lgnu/kawa/functions/LispRealFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field arg1:I

.field arg2:I

.field arg3:I

.field arg4:I

.field arg5:I

.field arg6:I

.field arg7:I

.field argsUsed:I

.field internalPad:Z

.field op:C

.field showPlus:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1207
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 1208
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/high16 v1, -0x50000000

    if-eq v0, v1, :cond_1

    iget v2, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput v1, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    const/high16 v2, -0x60000000

    if-ne v0, v2, :cond_2

    add-int/lit8 v1, v1, 0x2

    .line 1215
    iput v1, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1216
    :cond_2
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1217
    :cond_3
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1218
    :cond_4
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1219
    :cond_5
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1220
    :cond_6
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    if-ne v0, v2, :cond_7

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1221
    :cond_7
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    if-ne v0, v2, :cond_8

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    :cond_8
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1295
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1296
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->resolve([Ljava/lang/Object;I)Ljava/text/Format;

    move-result-object v1

    .line 1297
    iget v2, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr p2, v2

    add-int/lit8 v2, p2, 0x1

    .line 1298
    aget-object p1, p1, p2

    check-cast p1, Lgnu/math/RealNum;

    .line 1299
    invoke-virtual {v1, p1, v0, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1300
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return v2
.end method

.method public resolve([Ljava/lang/Object;I)Ljava/text/Format;
    .locals 8

    .line 1226
    iget-char v0, p0, Lgnu/kawa/functions/LispRealFormat;->op:C

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/high16 v3, -0x60000000

    const/4 v4, 0x1

    const/16 v5, 0x24

    if-ne v0, v5, :cond_3

    .line 1228
    new-instance v0, Lgnu/math/FixedRealFormat;

    invoke-direct {v0}, Lgnu/math/FixedRealFormat;-><init>()V

    .line 1229
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/4 v6, 0x2

    invoke-static {v5, v6, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v5

    .line 1230
    iget v6, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    if-ne v6, v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1231
    :cond_0
    iget v6, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    invoke-static {v6, v4, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v4

    .line 1232
    iget v6, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    if-ne v6, v3, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 1233
    :cond_1
    iget v6, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    invoke-static {v6, v2, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v2

    .line 1234
    iget v6, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    if-ne v6, v3, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 1235
    :cond_2
    iget v3, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    invoke-static {v3, v1, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result p1

    .line 1238
    invoke-virtual {v0, v5}, Lgnu/math/FixedRealFormat;->setMaximumFractionDigits(I)V

    .line 1239
    invoke-virtual {v0, v4}, Lgnu/math/FixedRealFormat;->setMinimumIntegerDigits(I)V

    .line 1240
    iput v2, v0, Lgnu/math/FixedRealFormat;->width:I

    .line 1241
    iput-char p1, v0, Lgnu/math/FixedRealFormat;->padChar:C

    .line 1242
    iget-boolean p1, p0, Lgnu/kawa/functions/LispRealFormat;->internalPad:Z

    iput-boolean p1, v0, Lgnu/math/FixedRealFormat;->internalPad:Z

    .line 1243
    iget-boolean p1, p0, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    iput-boolean p1, v0, Lgnu/math/FixedRealFormat;->showPlus:Z

    return-object v0

    :cond_3
    const/16 v5, 0x46

    const/4 v6, -0x1

    if-ne v0, v5, :cond_8

    .line 1248
    new-instance v0, Lgnu/math/FixedRealFormat;

    invoke-direct {v0}, Lgnu/math/FixedRealFormat;-><init>()V

    .line 1249
    iget v4, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    invoke-static {v4, v2, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v4

    .line 1250
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    if-ne v5, v3, :cond_4

    add-int/lit8 p2, p2, 0x1

    .line 1251
    :cond_4
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    invoke-static {v5, v6, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v5

    .line 1252
    iget v6, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    if-ne v6, v3, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 1253
    :cond_5
    iget v6, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    invoke-static {v6, v2, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v6

    .line 1254
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    if-ne v7, v3, :cond_6

    add-int/lit8 p2, p2, 0x1

    .line 1255
    :cond_6
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    invoke-static {v7, v2, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v7

    iput-char v7, v0, Lgnu/math/FixedRealFormat;->overflowChar:C

    .line 1256
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    if-ne v7, v3, :cond_7

    add-int/lit8 p2, p2, 0x1

    .line 1257
    :cond_7
    iget v3, p0, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    invoke-static {v3, v1, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result p1

    .line 1259
    invoke-virtual {v0, v5}, Lgnu/math/FixedRealFormat;->setMaximumFractionDigits(I)V

    .line 1260
    invoke-virtual {v0, v2}, Lgnu/math/FixedRealFormat;->setMinimumIntegerDigits(I)V

    .line 1261
    iput v4, v0, Lgnu/math/FixedRealFormat;->width:I

    .line 1262
    iput v6, v0, Lgnu/math/FixedRealFormat;->scale:I

    .line 1263
    iput-char p1, v0, Lgnu/math/FixedRealFormat;->padChar:C

    .line 1264
    iget-boolean p1, p0, Lgnu/kawa/functions/LispRealFormat;->internalPad:Z

    iput-boolean p1, v0, Lgnu/math/FixedRealFormat;->internalPad:Z

    .line 1265
    iget-boolean p1, p0, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    iput-boolean p1, v0, Lgnu/math/FixedRealFormat;->showPlus:Z

    return-object v0

    .line 1270
    :cond_8
    new-instance v0, Lgnu/math/ExponentialFormat;

    invoke-direct {v0}, Lgnu/math/ExponentialFormat;-><init>()V

    .line 1271
    iput-boolean v4, v0, Lgnu/math/ExponentialFormat;->exponentShowSign:Z

    .line 1272
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    invoke-static {v5, v2, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v5

    iput v5, v0, Lgnu/math/ExponentialFormat;->width:I

    .line 1273
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    if-ne v5, v3, :cond_9

    add-int/lit8 p2, p2, 0x1

    .line 1274
    :cond_9
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    invoke-static {v5, v6, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v5

    iput v5, v0, Lgnu/math/ExponentialFormat;->fracDigits:I

    .line 1275
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    if-ne v5, v3, :cond_a

    add-int/lit8 p2, p2, 0x1

    .line 1276
    :cond_a
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    invoke-static {v5, v2, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v5

    iput v5, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    .line 1277
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    if-ne v5, v3, :cond_b

    add-int/lit8 p2, p2, 0x1

    .line 1278
    :cond_b
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    invoke-static {v5, v4, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v5

    iput v5, v0, Lgnu/math/ExponentialFormat;->intDigits:I

    .line 1279
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    if-ne v5, v3, :cond_c

    add-int/lit8 p2, p2, 0x1

    .line 1280
    :cond_c
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    invoke-static {v5, v2, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v5

    iput-char v5, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    .line 1281
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    if-ne v5, v3, :cond_d

    add-int/lit8 p2, p2, 0x1

    .line 1282
    :cond_d
    iget v5, p0, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    invoke-static {v5, v1, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v1

    iput-char v1, v0, Lgnu/math/ExponentialFormat;->padChar:C

    .line 1283
    iget v1, p0, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    if-ne v1, v3, :cond_e

    add-int/lit8 p2, p2, 0x1

    .line 1284
    :cond_e
    iget v1, p0, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    const/16 v3, 0x45

    invoke-static {v1, v3, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result p1

    iput-char p1, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    .line 1286
    iget-char p1, p0, Lgnu/kawa/functions/LispRealFormat;->op:C

    const/16 p2, 0x47

    if-ne p1, p2, :cond_f

    const/4 v2, 0x1

    :cond_f
    iput-boolean v2, v0, Lgnu/math/ExponentialFormat;->general:Z

    .line 1287
    iget-boolean p1, p0, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    iput-boolean p1, v0, Lgnu/math/ExponentialFormat;->showPlus:Z

    return-object v0
.end method
