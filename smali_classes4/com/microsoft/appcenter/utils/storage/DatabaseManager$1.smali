.class Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/utils/storage/DatabaseManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

.field final synthetic val$sqlCreateCommand:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "context",
            "name",
            "factory",
            "version",
            "val$sqlCreateCommand"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    iput-object p6, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->val$sqlCreateCommand:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "db"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->val$sqlCreateCommand:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$000(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
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

    .line 108
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$000(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
