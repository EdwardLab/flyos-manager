.class public Lgnu/text/PrettyWriter;
.super Ljava/io/Writer;
.source "PrettyWriter.java"


# static fields
.field private static final BLOCK_PER_LINE_PREFIX_END:I = -0x3

.field private static final BLOCK_PREFIX_LENGTH:I = -0x4

.field private static final BLOCK_SECTION_COLUMN:I = -0x2

.field private static final BLOCK_SECTION_START_LINE:I = -0x6

.field private static final BLOCK_START_COLUMN:I = -0x1

.field private static final BLOCK_SUFFIX_LENGTH:I = -0x5

.field private static final LOGICAL_BLOCK_LENGTH:I = 0x6

.field public static final NEWLINE_FILL:I = 0x46

.field public static final NEWLINE_LINEAR:I = 0x4e

.field public static final NEWLINE_LITERAL:I = 0x4c

.field public static final NEWLINE_MANDATORY:I = 0x52

.field public static final NEWLINE_MISER:I = 0x4d

.field public static final NEWLINE_SPACE:I = 0x53

.field static final QITEM_BASE_SIZE:I = 0x2

.field static final QITEM_BLOCK_END_SIZE:I = 0x2

.field static final QITEM_BLOCK_END_TYPE:I = 0x5

.field static final QITEM_BLOCK_START_BLOCK_END:I = 0x4

.field static final QITEM_BLOCK_START_PREFIX:I = 0x5

.field static final QITEM_BLOCK_START_SIZE:I = 0x7

.field static final QITEM_BLOCK_START_SUFFIX:I = 0x6

.field static final QITEM_BLOCK_START_TYPE:I = 0x4

.field static final QITEM_INDENTATION_AMOUNT:I = 0x3

.field static final QITEM_INDENTATION_BLOCK:C = 'B'

.field static final QITEM_INDENTATION_CURRENT:C = 'C'

.field static final QITEM_INDENTATION_KIND:I = 0x2

.field static final QITEM_INDENTATION_SIZE:I = 0x4

.field static final QITEM_INDENTATION_TYPE:I = 0x3

.field static final QITEM_NEWLINE_KIND:I = 0x4

.field static final QITEM_NEWLINE_SIZE:I = 0x5

.field static final QITEM_NEWLINE_TYPE:I = 0x2

.field static final QITEM_NOP_TYPE:I = 0x0

.field static final QITEM_POSN:I = 0x1

.field static final QITEM_SECTION_START_DEPTH:I = 0x2

.field static final QITEM_SECTION_START_SECTION_END:I = 0x3

.field static final QITEM_SECTION_START_SIZE:I = 0x4

.field static final QITEM_TAB_COLINC:I = 0x4

.field static final QITEM_TAB_COLNUM:I = 0x3

.field static final QITEM_TAB_FLAGS:I = 0x2

.field static final QITEM_TAB_IS_RELATIVE:I = 0x2

.field static final QITEM_TAB_IS_SECTION:I = 0x1

.field static final QITEM_TAB_SIZE:I = 0x5

.field static final QITEM_TAB_TYPE:I = 0x6

.field static final QITEM_TYPE_AND_SIZE:I = 0x0

.field static final QUEUE_INIT_ALLOC_SIZE:I = 0x12c

.field public static indentLoc:Lgnu/mapping/ThreadLocation;

.field public static initialBufferSize:I

.field public static lineLengthLoc:Lgnu/mapping/ThreadLocation;

.field public static miserWidthLoc:Lgnu/mapping/ThreadLocation;


# instance fields
.field blockDepth:I

.field blocks:[I

.field public buffer:[C

.field public bufferFillPointer:I

.field bufferOffset:I

.field bufferStartColumn:I

.field currentBlock:I

.field lineLength:I

.field lineNumber:I

.field miserWidth:I

.field protected out:Ljava/io/Writer;

.field public pendingBlocksCount:I

.field prefix:[C

.field prettyPrintingMode:I

.field queueInts:[I

.field queueSize:I

.field queueStrings:[Ljava/lang/String;

.field queueTail:I

.field suffix:[C

.field wordEndSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "line-length"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/text/PrettyWriter;->lineLengthLoc:Lgnu/mapping/ThreadLocation;

    .line 44
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "miser-width"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/text/PrettyWriter;->miserWidthLoc:Lgnu/mapping/ThreadLocation;

    .line 46
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "indent"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/text/PrettyWriter;->indentLoc:Lgnu/mapping/ThreadLocation;

    const/16 v0, 0x7e

    .line 78
    sput v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/16 v0, 0x50

    .line 39
    iput v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    const/16 v0, 0x28

    .line 40
    iput v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 81
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    const/16 v1, 0x3c

    new-array v1, v1, [I

    .line 126
    iput-object v1, p0, Lgnu/text/PrettyWriter;->blocks:[I

    const/4 v1, 0x6

    .line 136
    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 141
    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 146
    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->suffix:[C

    const/16 v0, 0x12c

    new-array v1, v0, [I

    .line 166
    iput-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    new-array v0, v0, [Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 177
    iput v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 21
    iput-object p1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/16 v0, 0x50

    .line 39
    iput v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    const/16 v0, 0x28

    .line 40
    iput v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 81
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    const/16 v1, 0x3c

    new-array v1, v1, [I

    .line 126
    iput-object v1, p0, Lgnu/text/PrettyWriter;->blocks:[I

    const/4 v1, 0x6

    .line 136
    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 141
    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 146
    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->suffix:[C

    const/16 v0, 0x12c

    new-array v1, v0, [I

    .line 166
    iput-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    new-array v0, v0, [Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 177
    iput v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 27
    iput-object p1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 28
    iput p2, p0, Lgnu/text/PrettyWriter;->lineLength:I

    const/4 p1, 0x1

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    iput p1, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/16 v0, 0x50

    .line 39
    iput v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    const/16 v0, 0x28

    .line 40
    iput v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 81
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    const/16 v1, 0x3c

    new-array v1, v1, [I

    .line 126
    iput-object v1, p0, Lgnu/text/PrettyWriter;->blocks:[I

    const/4 v1, 0x6

    .line 136
    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 141
    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 146
    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->suffix:[C

    const/16 v0, 0x12c

    new-array v1, v0, [I

    .line 166
    iput-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    new-array v0, v0, [Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 177
    iput v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 34
    iput-object p1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 35
    iput p2, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    return-void
.end method

.method private static enoughSpace(II)I
    .locals 1

    mul-int/lit8 v0, p0, 0x2

    mul-int/lit8 p1, p1, 0x5

    shr-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private getPerLinePrefixEnd()I
    .locals 2

    .line 261
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x3

    aget v0, v0, v1

    return v0
.end method

.method private getPrefixLength()I
    .locals 2

    .line 266
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x4

    aget v0, v0, v1

    return v0
.end method

.method private getQueueSize(I)I
    .locals 1

    .line 187
    iget-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    aget p1, v0, p1

    shr-int/lit8 p1, p1, 0x10

    return p1
.end method

.method private getQueueType(I)I
    .locals 1

    .line 186
    iget-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    aget p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private getSectionColumn()I
    .locals 2

    .line 251
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    return v0
.end method

.method private getSectionStartLine()I
    .locals 2

    .line 276
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x6

    aget v0, v0, v1

    return v0
.end method

.method private getStartColumn()I
    .locals 2

    .line 256
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private getSuffixLength()I
    .locals 2

    .line 271
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x5

    aget v0, v0, v1

    return v0
.end method

.method private indexPosn(I)I
    .locals 1

    .line 110
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    add-int/2addr p1, v0

    return p1
.end method

.method private posnColumn(I)I
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->indexColumn(I)I

    move-result p1

    return p1
.end method

.method private posnIndex(I)I
    .locals 1

    .line 115
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private pushLogicalBlock(IIIII)V
    .locals 5

    .line 412
    iget v0, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v0, 0x6

    .line 413
    iget-object v2, p0, Lgnu/text/PrettyWriter;->blocks:[I

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 415
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 416
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iput-object v3, p0, Lgnu/text/PrettyWriter;->blocks:[I

    .line 419
    :cond_0
    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 420
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    add-int/lit8 v2, v1, -0x1

    aput p1, v0, v2

    add-int/lit8 v2, v1, -0x2

    .line 421
    aput p1, v0, v2

    add-int/lit8 p1, v1, -0x3

    .line 422
    aput p2, v0, p1

    add-int/lit8 p1, v1, -0x4

    .line 423
    aput p3, v0, p1

    add-int/lit8 p1, v1, -0x5

    .line 424
    aput p4, v0, p1

    add-int/lit8 v1, v1, -0x6

    .line 425
    aput p5, v0, v1

    return-void
.end method


# virtual methods
.method public addIndentation(IZ)V
    .locals 1

    .line 615
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p2, 0x43

    goto :goto_0

    :cond_0
    const/16 p2, 0x42

    .line 616
    :goto_0
    invoke-virtual {p0, p2, p1}, Lgnu/text/PrettyWriter;->enqueueIndent(CI)I

    :cond_1
    return-void
.end method

.method public clearBuffer()V
    .locals 2

    const/4 v0, 0x0

    .line 1251
    iput v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1252
    iput v0, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1253
    iput v0, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    .line 1254
    iput v0, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    const/4 v1, 0x6

    .line 1255
    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 1256
    iput v0, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 1257
    iput v0, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1258
    iput v0, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    return-void
.end method

.method public clearWordEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1212
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->forcePrettyOutput()V

    .line 1213
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 1214
    iput-object v1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 1216
    :cond_0
    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    return-void
.end method

.method public closeThis()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1224
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->forcePrettyOutput()V

    .line 1225
    iput-object v1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 1227
    :cond_0
    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    return-void
.end method

.method computeTabSize(III)I
    .locals 5

    .line 734
    iget-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v1, p1, 0x2

    aget v1, v0, v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    add-int/lit8 v2, p1, 0x3

    .line 738
    aget v2, v0, v2

    add-int/lit8 p1, p1, 0x4

    .line 739
    aget p1, v0, p1

    if-eqz v1, :cond_4

    if-le p1, v4, :cond_3

    add-int/2addr p3, v2

    .line 745
    rem-int/2addr p3, p1

    if-eqz p3, :cond_3

    add-int/2addr v2, p3

    :cond_3
    return v2

    :cond_4
    add-int/2addr v2, p2

    if-gt p3, v2, :cond_5

    add-int/2addr p2, p3

    sub-int/2addr p2, p3

    return p2

    :cond_5
    sub-int/2addr p3, p2

    .line 754
    rem-int/2addr p3, p1

    sub-int/2addr p1, p3

    return p1
.end method

.method public endLogicalBlock()V
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x2

    .line 671
    invoke-virtual {p0, v0, v1}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v0

    .line 672
    iget v1, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 673
    iget v1, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    const/4 v2, -0x1

    if-gez v1, :cond_1

    .line 678
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v3, v1, -0x5

    aget v3, v0, v3

    add-int/lit8 v1, v1, -0x6

    add-int/lit8 v1, v1, -0x5

    .line 679
    aget v0, v0, v1

    if-le v3, v0, :cond_0

    .line 682
    iget-object v1, p0, Lgnu/text/PrettyWriter;->suffix:[C

    array-length v4, v1

    sub-int/2addr v4, v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v1, v4, v3}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 685
    :cond_0
    iput v2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    return-void

    .line 689
    :cond_1
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v4, v1, 0x4

    aget v5, v3, v4

    if-nez v5, :cond_2

    .line 691
    iput v2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    goto :goto_0

    .line 694
    :cond_2
    iget v6, p0, Lgnu/text/PrettyWriter;->queueTail:I

    sub-int/2addr v6, v1

    if-lez v6, :cond_3

    .line 696
    array-length v7, v3

    sub-int/2addr v6, v7

    :cond_3
    if-ge v5, v6, :cond_4

    .line 701
    iput v2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    goto :goto_0

    :cond_4
    add-int/2addr v5, v1

    if-gez v5, :cond_5

    .line 708
    array-length v2, v3

    add-int/2addr v5, v2

    .line 709
    :cond_5
    iput v5, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 712
    :goto_0
    iget-object v2, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x6

    aget-object v2, v2, v3

    if-eqz v2, :cond_6

    .line 714
    invoke-virtual {p0, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    :cond_6
    sub-int/2addr v0, v1

    if-gez v0, :cond_7

    .line 717
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v1, v1

    add-int/2addr v0, v1

    .line 718
    :cond_7
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    aput v0, v1, v4

    return-void
.end method

.method public endLogicalBlock(Ljava/lang/String;)V
    .locals 1

    .line 724
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->endLogicalBlock()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 727
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enqueue(II)I
    .locals 7

    .line 523
    iget-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v0, v0

    .line 524
    iget v1, p0, Lgnu/text/PrettyWriter;->queueTail:I

    sub-int v1, v0, v1

    iget v2, p0, Lgnu/text/PrettyWriter;->queueSize:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    if-le p2, v1, :cond_0

    .line 526
    invoke-virtual {p0, v2, v1}, Lgnu/text/PrettyWriter;->enqueue(II)I

    .line 527
    :cond_0
    iget v1, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v1, p2

    if-le v1, v0, :cond_3

    .line 529
    invoke-static {v0, p2}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v1

    .line 530
    new-array v3, v1, [I

    .line 531
    new-array v4, v1, [Ljava/lang/String;

    .line 532
    iget v5, p0, Lgnu/text/PrettyWriter;->queueTail:I

    iget v6, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    if-lez v5, :cond_1

    .line 535
    iget-object v6, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    invoke-static {v6, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    iget-object v6, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    invoke-static {v6, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    :cond_1
    iget v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    sub-int v5, v0, v2

    sub-int/2addr v1, v0

    .line 540
    iget-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int v6, v2, v1

    invoke-static {v0, v2, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    iget-object v0, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    iget v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    add-int v6, v2, v1

    invoke-static {v0, v2, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    iput-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 547
    iput-object v4, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 548
    iget v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    iget v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    if-lt v0, v2, :cond_2

    add-int/2addr v0, v1

    .line 549
    iput v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    :cond_2
    add-int/2addr v2, v1

    .line 550
    iput v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 552
    :cond_3
    iget v0, p0, Lgnu/text/PrettyWriter;->queueTail:I

    iget v1, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v0, v1

    .line 553
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v2, v1

    if-lt v0, v2, :cond_4

    .line 554
    array-length v2, v1

    sub-int/2addr v0, v2

    :cond_4
    add-int/lit8 v2, v0, 0x0

    shl-int/lit8 v3, p2, 0x10

    or-int/2addr p1, v3

    .line 555
    aput p1, v1, v2

    const/4 p1, 0x1

    if-le p2, p1, :cond_5

    add-int/lit8 p1, v0, 0x1

    .line 557
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-direct {p0, v2}, Lgnu/text/PrettyWriter;->indexPosn(I)I

    move-result v2

    aput v2, v1, p1

    .line 559
    :cond_5
    iget p1, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lgnu/text/PrettyWriter;->queueSize:I

    return v0
.end method

.method public enqueueIndent(CI)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 607
    invoke-virtual {p0, v0, v1}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v0

    .line 608
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v2, v0, 0x2

    aput p1, v1, v2

    add-int/lit8 p1, v0, 0x3

    .line 609
    aput p2, v1, p1

    return v0
.end method

.method public enqueueNewline(I)V
    .locals 10

    const/4 v0, 0x0

    .line 565
    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 566
    iget v1, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    const/4 v2, 0x2

    const/4 v3, 0x5

    .line 568
    invoke-virtual {p0, v2, v3}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v3

    .line 569
    iget-object v4, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v5, v3, 0x4

    aput p1, v4, v5

    add-int/lit8 v5, v3, 0x2

    .line 570
    iget v6, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0x3

    .line 571
    aput v0, v4, v5

    .line 572
    iget v4, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 573
    iget v5, p0, Lgnu/text/PrettyWriter;->queueSize:I

    :goto_0
    if-lez v5, :cond_5

    .line 576
    iget-object v6, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v6, v6

    if-ne v4, v6, :cond_0

    const/4 v4, 0x0

    :cond_0
    if-ne v4, v3, :cond_1

    goto :goto_1

    .line 580
    :cond_1
    invoke-direct {p0, v4}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v6

    if-eq v6, v2, :cond_2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 581
    :cond_2
    iget-object v6, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v7, v4, 0x3

    aget v8, v6, v7

    if-nez v8, :cond_4

    add-int/lit8 v8, v4, 0x2

    aget v8, v6, v8

    if-gt v1, v8, :cond_4

    sub-int v8, v3, v4

    if-gez v8, :cond_3

    .line 588
    array-length v9, v6

    add-int/2addr v8, v9

    .line 589
    :cond_3
    aput v8, v6, v7

    .line 591
    :cond_4
    invoke-direct {p0, v4}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v6

    goto :goto_0

    :cond_5
    :goto_1
    const/16 v1, 0x4c

    if-eq p1, v1, :cond_7

    const/16 v1, 0x52

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p1, 0x1

    .line 595
    :goto_3
    invoke-virtual {p0, p1, v0}, Lgnu/text/PrettyWriter;->maybeOutput(ZZ)Z

    return-void
.end method

.method enqueueTab(III)I
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x5

    .line 469
    invoke-virtual {p0, v0, v1}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v0

    .line 470
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v2, v0, 0x2

    aput p1, v1, v2

    add-int/lit8 p1, v0, 0x3

    .line 471
    aput p2, v1, p1

    add-int/lit8 p1, v0, 0x4

    .line 472
    aput p3, v1, p1

    return v0
.end method

.method ensureSpaceInBuffer(I)I
    .locals 5

    .line 870
    iget-object v0, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 871
    array-length v1, v0

    .line 872
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    sub-int v3, v1, v2

    if-lez v3, :cond_0

    return v3

    .line 876
    :cond_0
    iget v3, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v3, :cond_2

    iget v3, p0, Lgnu/text/PrettyWriter;->lineLength:I

    if-le v2, v3, :cond_2

    const/4 v0, 0x0

    .line 878
    invoke-virtual {p0, v0, v0}, Lgnu/text/PrettyWriter;->maybeOutput(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->outputPartialLine()V

    .line 880
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result p1

    return p1

    .line 884
    :cond_2
    invoke-static {v1, p1}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result p1

    .line 885
    new-array v1, p1, [C

    .line 886
    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    move v3, v2

    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 888
    aget-char v4, v0, v3

    aput-char v4, v1, v3

    goto :goto_0

    :cond_3
    sub-int/2addr p1, v2

    return p1
.end method

.method expandTabs(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 794
    iget v1, v0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 795
    invoke-direct/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getSectionColumn()I

    move-result v2

    .line 796
    iget v3, v0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 797
    iget v4, v0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 798
    iget v5, v0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    const/4 v6, 0x6

    mul-int/lit8 v5, v5, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-lez v4, :cond_7

    .line 801
    iget-object v10, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v10, v10

    if-ne v3, v10, :cond_0

    move/from16 v10, p1

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    move/from16 v10, p1

    :goto_1
    if-ne v3, v10, :cond_1

    goto :goto_6

    .line 805
    :cond_1
    invoke-direct {v0, v3}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v6, :cond_4

    .line 808
    iget-object v11, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v13, v3, 0x1

    aget v11, v11, v13

    invoke-direct {v0, v11}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v11

    add-int v13, v1, v11

    .line 809
    invoke-virtual {v0, v3, v2, v13}, Lgnu/text/PrettyWriter;->computeTabSize(III)I

    move-result v13

    if-eqz v13, :cond_3

    mul-int/lit8 v14, v8, 0x2

    add-int/2addr v14, v5

    add-int/lit8 v15, v14, 0x1

    .line 813
    iget-object v6, v0, Lgnu/text/PrettyWriter;->blocks:[I

    array-length v7, v6

    if-lt v15, v7, :cond_2

    .line 815
    array-length v7, v6

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [I

    .line 816
    array-length v12, v6

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-static {v6, v2, v7, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    iput-object v7, v0, Lgnu/text/PrettyWriter;->blocks:[I

    goto :goto_2

    :cond_2
    move/from16 v16, v2

    .line 819
    :goto_2
    iget-object v2, v0, Lgnu/text/PrettyWriter;->blocks:[I

    aput v11, v2, v14

    .line 820
    aput v13, v2, v15

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v9, v13

    add-int/2addr v1, v13

    goto :goto_3

    :cond_3
    move/from16 v16, v2

    goto :goto_3

    :cond_4
    move/from16 v16, v2

    if-eq v3, v12, :cond_6

    const/4 v2, 0x4

    if-ne v3, v2, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v2, v16

    goto :goto_5

    .line 828
    :cond_6
    :goto_4
    iget-object v2, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v6, v3, 0x1

    aget v2, v2, v6

    invoke-direct {v0, v2}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 830
    :goto_5
    invoke-direct {v0, v3}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v6

    sub-int/2addr v4, v6

    add-int/2addr v3, v6

    const/4 v6, 0x6

    goto :goto_0

    :cond_7
    :goto_6
    if-lez v8, :cond_b

    .line 836
    iget v1, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    add-int v2, v1, v9

    .line 838
    iget-object v3, v0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 840
    array-length v4, v3

    if-le v2, v4, :cond_8

    .line 844
    invoke-static {v1, v9}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v4

    .line 845
    new-array v4, v4, [C

    .line 846
    iput-object v4, v0, Lgnu/text/PrettyWriter;->buffer:[C

    goto :goto_7

    :cond_8
    move-object v4, v3

    .line 848
    :goto_7
    iput v2, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 849
    iget v2, v0, Lgnu/text/PrettyWriter;->bufferOffset:I

    sub-int/2addr v2, v9

    iput v2, v0, Lgnu/text/PrettyWriter;->bufferOffset:I

    :goto_8
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_a

    .line 852
    iget-object v2, v0, Lgnu/text/PrettyWriter;->blocks:[I

    mul-int/lit8 v6, v8, 0x2

    add-int/2addr v6, v5

    aget v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    .line 853
    aget v2, v2, v6

    add-int v6, v7, v9

    sub-int/2addr v1, v7

    .line 855
    invoke-static {v3, v7, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v6, v2

    :goto_9
    if-ge v1, v6, :cond_9

    const/16 v10, 0x20

    .line 857
    aput-char v10, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    sub-int/2addr v9, v2

    move v1, v7

    goto :goto_8

    :cond_a
    if-eq v4, v3, :cond_b

    const/4 v2, 0x0

    .line 862
    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    return-void
.end method

.method fitsOnLine(IZ)I
    .locals 3

    .line 1049
    iget v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 1050
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->printReadably()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getMaxLines()I

    move-result v1

    iget v2, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x3

    .line 1053
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getSuffixLength()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    const/4 v1, -0x1

    if-ltz p1, :cond_2

    .line 1056
    iget-object p2, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    aget p1, p2, p1

    invoke-direct {p0, p1}, Lgnu/text/PrettyWriter;->posnColumn(I)I

    move-result p1

    if-gt p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-eqz p2, :cond_3

    return v1

    .line 1059
    :cond_3
    iget p1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->indexColumn(I)I

    move-result p1

    if-le p1, v0, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public flush()V
    .locals 2

    .line 1195
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    .line 1199
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->forcePrettyOutput()V

    .line 1200
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1204
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public forcePrettyOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1183
    invoke-virtual {p0, v0, v1}, Lgnu/text/PrettyWriter;->maybeOutput(ZZ)Z

    .line 1184
    iget v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    if-lez v1, :cond_0

    .line 1185
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->outputPartialLine()V

    :cond_0
    const/4 v1, -0x1

    .line 1186
    invoke-virtual {p0, v1}, Lgnu/text/PrettyWriter;->expandTabs(I)V

    .line 1187
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v1

    iput v1, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1188
    iget-object v1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lgnu/text/PrettyWriter;->buffer:[C

    iget v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Writer;->write([CII)V

    .line 1189
    iput v0, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1190
    iput v0, p0, Lgnu/text/PrettyWriter;->queueSize:I

    return-void
.end method

.method public getColumnNumber()I
    .locals 3

    .line 1233
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 1237
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    iget v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    add-int/2addr v0, v1

    return v0

    .line 1238
    :cond_1
    iget-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 1240
    :cond_2
    iget v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v1, v0

    return v1
.end method

.method getMaxLines()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getMiserWidth()I
    .locals 1

    .line 1024
    iget v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    return v0
.end method

.method public getPrettyPrintingMode()I
    .locals 1

    .line 65
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    return v0
.end method

.method indexColumn(I)I
    .locals 8

    .line 759
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 760
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getSectionColumn()I

    move-result v1

    .line 761
    invoke-direct {p0, p1}, Lgnu/text/PrettyWriter;->indexPosn(I)I

    move-result v2

    .line 762
    iget v3, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 763
    iget v4, p0, Lgnu/text/PrettyWriter;->queueSize:I

    :goto_0
    if-lez v4, :cond_5

    .line 767
    iget-object v5, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v5, v5

    if-lt v3, v5, :cond_0

    const/4 v3, 0x0

    .line 769
    :cond_0
    invoke-direct {p0, v3}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v5

    if-eqz v5, :cond_4

    .line 772
    iget-object v6, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    if-lt v6, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x6

    if-ne v5, v7, :cond_2

    .line 776
    invoke-direct {p0, v6}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0, v3, v1, v5}, Lgnu/text/PrettyWriter;->computeTabSize(III)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    :cond_2
    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v7, 0x4

    if-ne v5, v7, :cond_4

    .line 780
    :cond_3
    invoke-direct {p0, v6}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 783
    :cond_4
    :goto_1
    invoke-direct {p0, v3}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v5

    goto :goto_0

    :cond_5
    :goto_2
    add-int/2addr v0, p1

    return v0
.end method

.method isMisering()Z
    .locals 3

    .line 1029
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getMiserWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 1030
    iget v1, p0, Lgnu/text/PrettyWriter;->lineLength:I

    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getStartColumn()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrettyPrinting()Z
    .locals 1

    .line 68
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lineAbbreviationHappened()V
    .locals 0

    return-void
.end method

.method maybeOutput(ZZ)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 898
    :goto_0
    iget v2, p0, Lgnu/text/PrettyWriter;->queueSize:I

    if-lez v2, :cond_14

    .line 900
    iget v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 901
    iput v0, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 902
    :cond_0
    iget v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 903
    invoke-direct {p0, v2}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v3, v4, :cond_a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    goto/16 :goto_8

    .line 1010
    :cond_1
    invoke-virtual {p0, v2}, Lgnu/text/PrettyWriter;->expandTabs(I)V

    goto/16 :goto_8

    .line 1007
    :cond_2
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->reallyEndLogicalBlock()V

    goto/16 :goto_8

    .line 975
    :cond_3
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v4, v2, 0x3

    aget v4, v3, v4

    if-lez v4, :cond_4

    add-int/2addr v4, v2

    .line 977
    array-length v3, v3

    rem-int/2addr v4, v3

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    .line 978
    :goto_1
    invoke-virtual {p0, v4, p1}, Lgnu/text/PrettyWriter;->fitsOnLine(IZ)I

    move-result v3

    if-lez v3, :cond_5

    .line 984
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v4, v2, 0x4

    aget v4, v3, v4

    add-int v6, v4, v2

    .line 986
    array-length v3, v3

    rem-int/2addr v6, v3

    .line 987
    invoke-virtual {p0, v6}, Lgnu/text/PrettyWriter;->expandTabs(I)V

    .line 988
    iput v6, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 989
    iget v3, p0, Lgnu/text/PrettyWriter;->queueSize:I

    sub-int/2addr v3, v4

    iput v3, p0, Lgnu/text/PrettyWriter;->queueSize:I

    goto :goto_2

    :cond_5
    if-ltz v3, :cond_6

    if-eqz p2, :cond_14

    .line 994
    :cond_6
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x5

    aget-object v4, v3, v4

    add-int/lit8 v6, v2, 0x6

    .line 995
    aget-object v3, v3, v6

    .line 997
    iget-object v6, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    invoke-direct {p0, v6}, Lgnu/text/PrettyWriter;->posnColumn(I)I

    move-result v6

    invoke-virtual {p0, v6, v4, v3}, Lgnu/text/PrettyWriter;->reallyStartLogicalBlock(ILjava/lang/String;Ljava/lang/String;)V

    move v6, v2

    .line 1002
    :goto_2
    iget v3, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    if-ne v3, v2, :cond_7

    .line 1003
    iput v5, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    :cond_7
    move v2, v6

    goto/16 :goto_8

    .line 961
    :cond_8
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->isMisering()Z

    move-result v3

    if-nez v3, :cond_13

    .line 963
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v4, v2, 0x2

    aget v4, v3, v4

    add-int/lit8 v5, v2, 0x3

    .line 964
    aget v5, v3, v5

    const/16 v6, 0x42

    if-ne v4, v6, :cond_9

    .line 966
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getStartColumn()I

    move-result v3

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v2, 0x1

    .line 968
    aget v3, v3, v4

    invoke-direct {p0, v3}, Lgnu/text/PrettyWriter;->posnColumn(I)I

    move-result v3

    :goto_3
    add-int/2addr v5, v3

    .line 970
    invoke-virtual {p0, v5}, Lgnu/text/PrettyWriter;->setIndentation(I)V

    goto :goto_8

    .line 909
    :cond_a
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v4, v2, 0x4

    aget v3, v3, v4

    const/16 v4, 0x46

    if-eq v3, v4, :cond_d

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_c

    const/16 v4, 0x53

    if-eq v3, v4, :cond_e

    :cond_b
    :goto_4
    const/4 v3, 0x1

    goto :goto_6

    .line 915
    :cond_c
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->isMisering()Z

    move-result v3

    goto :goto_6

    .line 918
    :cond_d
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->isMisering()Z

    move-result v3

    if-nez v3, :cond_b

    iget v3, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getSectionStartLine()I

    move-result v4

    if-le v3, v4, :cond_e

    goto :goto_4

    .line 926
    :cond_e
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v4, v2, 0x3

    aget v4, v3, v4

    if-nez v4, :cond_f

    goto :goto_5

    :cond_f
    add-int v5, v2, v4

    .line 932
    array-length v4, v3

    if-lt v5, v4, :cond_10

    .line 933
    array-length v3, v3

    sub-int/2addr v5, v3

    .line 935
    :cond_10
    :goto_5
    invoke-virtual {p0, v5, p1}, Lgnu/text/PrettyWriter;->fitsOnLine(IZ)I

    move-result v5

    if-lez v5, :cond_11

    const/4 v3, 0x0

    goto :goto_6

    :cond_11
    if-ltz v5, :cond_b

    if-eqz p2, :cond_14

    goto :goto_4

    :goto_6
    if-eqz v3, :cond_13

    if-eqz p2, :cond_12

    if-nez v5, :cond_12

    .line 950
    :try_start_0
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->outputPartialLine()V

    goto :goto_7

    .line 952
    :cond_12
    invoke-virtual {p0, v2}, Lgnu/text/PrettyWriter;->outputLine(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    const/4 v1, 0x1

    goto :goto_8

    :catch_0
    move-exception p1

    .line 956
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1013
    :cond_13
    :goto_8
    iget v3, p0, Lgnu/text/PrettyWriter;->queueTail:I

    invoke-direct {p0, v3}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v3

    .line 1014
    iget v4, p0, Lgnu/text/PrettyWriter;->queueSize:I

    sub-int/2addr v4, v3

    iput v4, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v2, v3

    .line 1016
    iput v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    goto/16 :goto_0

    :cond_14
    return v1
.end method

.method outputLine(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 1075
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v2, p1, 0x4

    aget v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x4c

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr p1, v3

    .line 1077
    aget p1, v1, p1

    invoke-direct {p0, p1}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result p1

    if-eqz v2, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    move v1, p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 1091
    :cond_3
    aget-char v5, v0, v1

    const/16 v6, 0x20

    if-eq v5, v6, :cond_2

    add-int/2addr v1, v3

    .line 1098
    :goto_1
    iget-object v5, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v5, v0, v4, v1}, Ljava/io/Writer;->write([CII)V

    .line 1099
    iget v1, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    add-int/2addr v1, v3

    .line 1102
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->printReadably()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1104
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getMaxLines()I

    move-result v3

    if-lez v3, :cond_5

    if-lt v1, v3, :cond_5

    .line 1107
    iget-object v3, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    const-string v5, " .."

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1108
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getSuffixLength()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1111
    iget-object v5, p0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 1112
    array-length v6, v5

    .line 1113
    iget-object v7, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    sub-int/2addr v6, v3

    invoke-virtual {v7, v5, v6, v3}, Ljava/io/Writer;->write([CII)V

    .line 1116
    :cond_4
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->lineAbbreviationHappened()V

    .line 1119
    :cond_5
    iput v1, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    .line 1120
    iget-object v3, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(I)V

    .line 1121
    iput v4, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1122
    iget v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    if-eqz v2, :cond_6

    .line 1123
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPerLinePrefixEnd()I

    move-result v5

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v5

    :goto_2
    sub-int v6, p1, v5

    sub-int v7, v3, v6

    .line 1127
    array-length v8, v0

    if-le v7, v8, :cond_7

    sub-int v9, v7, v8

    .line 1130
    invoke-static {v8, v9}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v8

    new-array v8, v8, [C

    .line 1132
    iput-object v8, p0, Lgnu/text/PrettyWriter;->buffer:[C

    goto :goto_3

    :cond_7
    move-object v8, v0

    :goto_3
    sub-int/2addr v3, p1

    .line 1134
    invoke-static {v0, p1, v8, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1136
    iget-object p1, p0, Lgnu/text/PrettyWriter;->prefix:[C

    invoke-static {p1, v4, v8, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1137
    iput v7, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1138
    iget p1, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    add-int/2addr p1, v6

    iput p1, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    if-nez v2, :cond_8

    .line 1141
    iget-object p1, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v0, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v2, v0, -0x2

    aput v5, p1, v2

    add-int/lit8 v0, v0, -0x6

    .line 1142
    aput v1, p1, v0

    :cond_8
    return-void
.end method

.method outputPartialLine()V
    .locals 5

    .line 1149
    iget v0, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 1150
    :goto_0
    iget v1, p0, Lgnu/text/PrettyWriter;->queueSize:I

    const/4 v2, 0x0

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1152
    invoke-direct {p0, v0}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v1

    .line 1153
    iget v3, p0, Lgnu/text/PrettyWriter;->queueSize:I

    sub-int/2addr v3, v1

    iput v3, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v0, v1

    .line 1155
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1157
    :cond_0
    iput v0, p0, Lgnu/text/PrettyWriter;->queueTail:I

    goto :goto_0

    .line 1159
    :cond_1
    iget v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1160
    iget v3, p0, Lgnu/text/PrettyWriter;->queueSize:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    invoke-direct {p0, v0}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    sub-int/2addr v1, v0

    if-lez v0, :cond_3

    .line 1167
    :try_start_0
    iget-object v3, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    iget-object v4, p0, Lgnu/text/PrettyWriter;->buffer:[C

    invoke-virtual {v3, v4, v2, v0}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    iput v0, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1175
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v3

    iput v3, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1176
    iget-object v3, p0, Lgnu/text/PrettyWriter;->buffer:[C

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1177
    iput v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1178
    iget v1, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    return-void

    :catch_0
    move-exception v0

    .line 1172
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1164
    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "outputPartialLine called when nothing can be output."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method printReadably()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method reallyEndLogicalBlock()V
    .locals 4

    .line 511
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v0

    .line 512
    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x6

    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 513
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 517
    iget-object v2, p0, Lgnu/text/PrettyWriter;->prefix:[C

    const/16 v3, 0x20

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method reallyStartLogicalBlock(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 430
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPerLinePrefixEnd()I

    move-result v2

    .line 431
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v3

    .line 432
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getSuffixLength()I

    move-result v6

    .line 433
    iget v5, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    move-object v0, p0

    move v1, p1

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lgnu/text/PrettyWriter;->pushLogicalBlock(IIIII)V

    .line 435
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->setIndentation(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 438
    iget-object v1, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v2, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v2, v2, -0x3

    aput p1, v1, v2

    .line 439
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 440
    iget-object v2, p0, Lgnu/text/PrettyWriter;->suffix:[C

    sub-int/2addr p1, v1

    invoke-virtual {p2, v0, v1, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_0
    if-eqz p3, :cond_2

    .line 447
    iget-object p1, p0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 448
    array-length p2, p1

    .line 449
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, v6, v1

    if-le v2, p2, :cond_1

    .line 453
    invoke-static {p2, v1}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v3

    .line 454
    new-array v4, v3, [C

    iput-object v4, p0, Lgnu/text/PrettyWriter;->suffix:[C

    sub-int/2addr p2, v6

    sub-int v5, v3, v6

    .line 455
    invoke-static {p1, p2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v3

    :cond_1
    sub-int/2addr p2, v2

    .line 460
    invoke-virtual {p3, v0, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 462
    iget-object p1, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget p2, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 p2, p2, -0x5

    aput v2, p1, p2

    :cond_2
    return-void
.end method

.method public setColumnNumber(I)V
    .locals 2

    .line 1246
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    return-void
.end method

.method public setIndentation(I)V
    .locals 4

    .line 489
    iget-object v0, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 490
    array-length v1, v0

    .line 491
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v2

    .line 492
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPerLinePrefixEnd()I

    move-result v3

    if-le v3, p1, :cond_0

    move p1, v3

    :cond_0
    if-le p1, v1, :cond_1

    sub-int v0, p1, v1

    .line 497
    invoke-static {v1, v0}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v0

    new-array v0, v0, [C

    .line 498
    iget-object v1, p0, Lgnu/text/PrettyWriter;->prefix:[C

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    iput-object v0, p0, Lgnu/text/PrettyWriter;->prefix:[C

    :cond_1
    if-le p1, v2, :cond_2

    :goto_0
    if-ge v2, p1, :cond_2

    const/16 v1, 0x20

    .line 504
    aput-char v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 506
    :cond_2
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x4

    aput p1, v0, v1

    return-void
.end method

.method public setPrettyPrinting(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 75
    iput p1, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    return-void
.end method

.method public setPrettyPrintingMode(I)V
    .locals 0

    .line 60
    iput p1, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    return-void
.end method

.method public startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    .line 625
    iget v0, p0, Lgnu/text/PrettyWriter;->queueSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget v0, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    if-nez v0, :cond_3

    .line 627
    sget-object v0, Lgnu/text/PrettyWriter;->lineLengthLoc:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x50

    .line 629
    iput v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 633
    :goto_0
    sget-object v0, Lgnu/text/PrettyWriter;->miserWidthLoc:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 634
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_2

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 639
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, -0x1

    .line 637
    iput v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 641
    :goto_2
    sget-object v0, Lgnu/text/PrettyWriter;->indentLoc:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p1, :cond_4

    .line 645
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 646
    :cond_4
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x7

    const/4 v2, 0x4

    .line 648
    invoke-virtual {p0, v2, v0}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v0

    .line 650
    iget-object v2, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    aput v4, v2, v3

    .line 651
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x5

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    move-object p1, v1

    :goto_3
    aput-object p1, v3, v5

    add-int/lit8 p1, v0, 0x6

    .line 653
    aput-object p3, v3, p1

    add-int/lit8 v4, v4, 0x1

    .line 654
    iput v4, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 655
    iget p1, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    const/4 p2, 0x0

    if-gez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_4

    :cond_7
    sub-int/2addr p1, v0

    if-lez p1, :cond_8

    .line 662
    array-length p3, v2

    sub-int/2addr p1, p3

    :cond_8
    :goto_4
    add-int/lit8 p3, v0, 0x4

    .line 664
    aput p1, v2, p3

    add-int/lit8 p1, v0, 0x3

    .line 665
    aput p2, v2, p1

    .line 666
    iput v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    return-void
.end method

.method public write(I)V
    .locals 4

    const/4 v0, 0x0

    .line 305
    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 307
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_0

    const/16 p1, 0x4c

    .line 308
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 311
    invoke-virtual {p0, v0}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    .line 312
    iget v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 313
    iget-object v2, p0, Lgnu/text/PrettyWriter;->buffer:[C

    int-to-char v3, p1

    aput-char v3, v2, v1

    add-int/2addr v1, v0

    .line 314
    iput v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    .line 315
    iget p1, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez p1, :cond_1

    const/16 p1, 0x53

    .line 316
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    :goto_0
    if-lez p3, :cond_4

    .line 333
    invoke-virtual {p0, p3}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result v0

    if-le p3, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, p3

    .line 336
    :goto_1
    iget v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    sub-int/2addr p3, v0

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    add-int/lit8 v2, p2, 0x1

    .line 340
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v3, 0xa

    if-ne p2, v3, :cond_1

    .line 341
    iget v3, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v3, :cond_1

    .line 343
    iput v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    const/16 p2, 0x4c

    .line 344
    invoke-virtual {p0, p2}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 345
    iget p2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    :goto_3
    move v1, p2

    goto :goto_4

    .line 349
    :cond_1
    iget-object v3, p0, Lgnu/text/PrettyWriter;->buffer:[C

    add-int/lit8 v4, v1, 0x1

    aput-char p2, v3, v1

    const/16 v1, 0x20

    if-ne p2, v1, :cond_2

    .line 350
    iget p2, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    iget p2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez p2, :cond_2

    .line 352
    iput v4, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    const/16 p2, 0x53

    .line 353
    invoke-virtual {p0, p2}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 354
    iget p2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    goto :goto_3

    :cond_2
    move v1, v4

    :goto_4
    move p2, v2

    goto :goto_2

    .line 358
    :cond_3
    iput v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public write([C)V
    .locals 2

    .line 364
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/text/PrettyWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 6

    const/4 v0, 0x0

    .line 369
    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    add-int v0, p2, p3

    :goto_0
    if-lez p3, :cond_5

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 379
    iget v2, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v2, :cond_1

    aget-char v2, p1, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    iget v3, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez v3, :cond_1

    :cond_0
    sub-int p3, v1, p2

    .line 383
    invoke-virtual {p0, p1, p2, p3}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 384
    invoke-virtual {p0, v2}, Lgnu/text/PrettyWriter;->write(I)V

    add-int/lit8 p2, v1, 0x1

    sub-int p3, v0, p2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 393
    :cond_2
    invoke-virtual {p0, p3}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result v1

    if-ge v1, p3, :cond_3

    goto :goto_2

    :cond_3
    move v1, p3

    .line 395
    :goto_2
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    add-int v3, v2, v1

    :goto_3
    if-ge v2, v3, :cond_4

    .line 398
    iget-object v4, p0, Lgnu/text/PrettyWriter;->buffer:[C

    add-int/lit8 v5, p2, 0x1

    aget-char p2, p1, p2

    aput-char p2, v4, v2

    add-int/lit8 v2, v2, 0x1

    move p2, v5

    goto :goto_3

    .line 399
    :cond_4
    iput v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    sub-int/2addr p3, v1

    if-nez p3, :cond_2

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final writeBreak(I)V
    .locals 1

    .line 600
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_0

    .line 601
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    :cond_0
    return-void
.end method

.method public writeWordEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    return-void
.end method

.method public writeWordStart()V
    .locals 1

    .line 293
    iget-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 294
    invoke-virtual {p0, v0}, Lgnu/text/PrettyWriter;->write(I)V

    :cond_0
    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    return-void
.end method
