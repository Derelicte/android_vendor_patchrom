.class Lcom/miui/notes/ui/FoldersListAdapter$FolderListItem;
.super Landroid/widget/LinearLayout;
.source "FoldersListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/FoldersListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderListItem"
.end annotation


# instance fields
.field private mName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/notes/ui/FoldersListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/notes/ui/FoldersListAdapter;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/notes/ui/FoldersListAdapter$FolderListItem;->this$0:Lcom/miui/notes/ui/FoldersListAdapter;

    .line 52
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const v0, 0x7f030003

    invoke-static {p2, v0, p0}, Lcom/miui/notes/ui/FoldersListAdapter$FolderListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    const v0, 0x7f0d0003

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/FoldersListAdapter$FolderListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/notes/ui/FoldersListAdapter$FolderListItem;->mName:Landroid/widget/TextView;

    .line 55
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/notes/ui/FoldersListAdapter$FolderListItem;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method
