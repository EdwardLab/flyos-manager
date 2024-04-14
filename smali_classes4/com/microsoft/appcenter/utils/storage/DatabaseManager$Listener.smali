.class public interface abstract Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "db"
        }
    .end annotation
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "oldVersion",
            "newVersion"
        }
    .end annotation
.end method
