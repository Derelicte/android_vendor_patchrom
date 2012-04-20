.class Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter$1;
.super Ljava/lang/Object;
.source "BaseSelectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

.field final synthetic val$gPosition:I


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter$1;->this$1:Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

    iput p2, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter$1;->val$gPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 619
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 620
    .local v0, check:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter$1;->this$1:Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

    iget-object v1, v1, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget v3, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter$1;->val$gPosition:I

    #calls: Lcom/miui/backup/ui/BaseSelectList;->selectAllChanged(ZI)V
    invoke-static {v1, v2, v3}, Lcom/miui/backup/ui/BaseSelectList;->access$400(Lcom/miui/backup/ui/BaseSelectList;ZI)V

    .line 621
    return-void
.end method
