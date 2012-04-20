.class Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter$1;
.super Ljava/lang/Object;
.source "ExpandableListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;

.field final synthetic val$gPosition:I


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter$1;->this$1:Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;

    iput p2, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter$1;->val$gPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 391
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 392
    .local v0, check:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter$1;->this$1:Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;

    iget-object v1, v1, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget v3, p0, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter$1;->val$gPosition:I

    #calls: Lcom/miui/milk/ui/ExpandableListFragment;->selectAllChanged(ZI)V
    invoke-static {v1, v2, v3}, Lcom/miui/milk/ui/ExpandableListFragment;->access$300(Lcom/miui/milk/ui/ExpandableListFragment;ZI)V

    .line 393
    return-void
.end method
