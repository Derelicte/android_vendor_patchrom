.class final enum Lcom/miui/notes/ui/NotesListActivity$ListEditState;
.super Ljava/lang/Enum;
.source "NotesListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NotesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ListEditState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/notes/ui/NotesListActivity$ListEditState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/notes/ui/NotesListActivity$ListEditState;

.field public static final enum CALL_RECORD_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

.field public static final enum NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

.field public static final enum SUB_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    const-string v1, "NOTE_LIST"

    invoke-direct {v0, v1, v2}, Lcom/miui/notes/ui/NotesListActivity$ListEditState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    new-instance v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    const-string v1, "SUB_FOLDER"

    invoke-direct {v0, v1, v3}, Lcom/miui/notes/ui/NotesListActivity$ListEditState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->SUB_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    new-instance v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    const-string v1, "CALL_RECORD_FOLDER"

    invoke-direct {v0, v1, v4}, Lcom/miui/notes/ui/NotesListActivity$ListEditState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->CALL_RECORD_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    sget-object v1, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->SUB_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->CALL_RECORD_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->$VALUES:[Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    .locals 1
    .parameter

    .prologue
    .line 82
    const-class v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    return-object v0
.end method

.method public static values()[Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->$VALUES:[Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    invoke-virtual {v0}, [Lcom/miui/notes/ui/NotesListActivity$ListEditState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    return-object v0
.end method
