.class Lcom/miui/notes/ui/NoteEditActivity$2;
.super Ljava/lang/Object;
.source "NoteEditActivity.java"

# interfaces
.implements Lmiui/app/DateTimePickerDialog$OnDateTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NoteEditActivity;->setReminder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NoteEditActivity;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NoteEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/miui/notes/ui/NoteEditActivity$2;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDateTimeSet(Landroid/app/AlertDialog;J)V
    .locals 2
    .parameter "dialog"
    .parameter "date"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity$2;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    #getter for: Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;
    invoke-static {v0}, Lcom/miui/notes/ui/NoteEditActivity;->access$200(Lcom/miui/notes/ui/NoteEditActivity;)Lcom/miui/notes/model/WorkingNote;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/miui/notes/model/WorkingNote;->setAlertDate(JZ)V

    .line 591
    return-void
.end method
