.class Landroid/support/v4/view/ViewPager$DataSetObserver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/PagerAdapter$DataSetObserver;


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/ViewPager$DataSetObserver;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager$DataSetObserver;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$DataSetObserver;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->dataSetChanged()V

    return-void
.end method
