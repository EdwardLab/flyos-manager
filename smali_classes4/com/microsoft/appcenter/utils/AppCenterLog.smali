.class public Lcom/microsoft/appcenter/utils/AppCenterLog;
.super Ljava/lang/Object;
.source "AppCenterLog.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AppCenter"

.field public static final NONE:I = 0x8

.field private static mCustomLogger:Ljava/util/logging/Logger; = null

.field private static sLogLevel:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 119
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 120
    sget-object v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    .line 121
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation

    .line 136
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 137
    sget-object v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    .line 138
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 219
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 220
    sget-object v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    .line 221
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation

    .line 236
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 237
    sget-object v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    .line 238
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .line 66
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    return v0
.end method

.method private static getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s: %s"

    .line 273
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 152
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 153
    sget-object v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    .line 154
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation

    .line 170
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 171
    sget-object v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    .line 172
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static logAssert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 253
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 254
    invoke-static {v1, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logAssert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation

    .line 267
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logLevel"
        }
    .end annotation

    .line 75
    sput p0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    return-void
.end method

.method public static setLogger(Ljava/util/logging/Logger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logger"
        }
    .end annotation

    .line 55
    sput-object p0, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 85
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 86
    sget-object v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    .line 87
    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {p0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation

    .line 103
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 104
    sget-object v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    .line 105
    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {p0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 186
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 187
    sget-object v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    .line 188
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation

    .line 203
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 204
    sget-object v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    .line 205
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
