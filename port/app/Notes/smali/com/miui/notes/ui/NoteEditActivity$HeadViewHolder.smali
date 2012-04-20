.class Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;
.super Ljava/lang/Object;
.source "NoteEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NoteEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadViewHolder"
.end annotation


# instance fields
.field public ibSetBgColor:Landroid/widget/ImageView;

.field public ivAlertIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/notes/ui/NoteEditActivity;

.field public tvAlertDate:Landroid/widget/TextView;

.field public tvModified:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/miui/notes/ui/NoteEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/notes/ui/NoteEditActivity;Lcom/miui/notes/ui/NoteEditActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;-><init>(Lcom/miui/notes/ui/NoteEditActivity;)V

    return-void
.end method
