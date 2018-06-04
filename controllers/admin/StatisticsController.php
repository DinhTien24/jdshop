<?php
namespace app\controllers\admin;
use Yii;
use app\models\Type;
use app\models\ProductDetail;
use app\models\Product;
use app\models\SearchProduct;
use app\models\ImageProduct;
use app\models\SearchImageProduct;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\data\Pagination;
use yii\data\ActiveDataProvider;

class StatisticsController extends Controller{
	public function actionIndex(){
		$this->layout='jdshop-admin';
		//get revenue
        $query = new \yii\db\Query;
        $query->select('sum(CAST(total_price AS BIGINT)) as revenue')
            ->from('sale_order');
        $revenue = $query->all();

		//get sales
        $query = new \yii\db\Query;
        $query->select('count(*) as sales')
            ->from('sale_order');
        $sales = $query->all();

		//get sales
        $query = new \yii\db\Query;
        $query->select('count(*) as products')
            ->from('sale_order');
        $products = $query->all();

        //get customers
        $query = new \yii\db\Query;
        $query->select('count(*) as users')
            ->from('users as t1')
            ->where('exists (select * from sale_order as t2 where t1.id = t2.id_user)');
        $customers = $query->all();

        //get recentSO
        $query = new \yii\db\Query;
        $query->select('t2.name, t1.total_price, t2.address, t1.status, t1.created_date')
            ->from('sale_order as t1, users as t2')
            ->where('t1.id_user = t2.id')
            ->addOrderBy(['t1.created_date'=>SORT_DESC])
            ->limit(5);
        $recentSO = $query->all();

        //get profit
        $query = new \yii\db\Query;
        $query->select('month(created_date) as month,year(created_date) as year,sum(total_price) as profit')
            ->from('sale_order')
            ->addGroupBy('month(created_date),year(created_date)')
            ->addOrderBy(['month(created_date)'=>SORT_DESC, 'year(created_date)'=>SORT_DESC]);
        $profit = $query->all();

        //get inventory
        $query = new \yii\db\Query;
        $query->select('p.id_type,t.name,t.gender,sum(amount) as totalamount')
            ->from('product_detail as pd, product as p, type as t')
            ->where('pd.id_product = p.id and t.id = p.id_type')
            ->addGroupBy('p.id_type,t.name, t.gender');
        $inventory = $query->all();

        //get feature product
        $query = new \yii\db\Query;
        $query->select('order_line.id_product,type.gender,product.name, sum(amount)  as amount')
            ->from('order_line')
            ->innerJoin('product',$on = 'product.id = order_line.id_product')
            ->innerJoin('type',$on = 'product.id_type = type.id')
            ->innerJoin('sale_order',$on = 'order_line.id_bill = sale_order.id')
            ->where('month(sale_order.created_date)=month(getdate())')
            ->addGroupBy('order_line.id_product,product.name,type.gender')
            ->addOrderBy(['sum(amount)'=>SORT_DESC])
            ->limit(1);
        $feature1MountProduct = $query->all();

        //get profit by producttype
        $query = new \yii\db\Query;
        $query->select('t.name, sum(ol.sum_price) as amount')
            ->from('sale_order as so, type as t, order_line as ol, product as p')
            ->where('so.id = ol.id_bill and ol.id_product = p.id and p.id_type = t.id and month(so.created_date) is not null')
            ->addGroupBy('t.name');
        $profitByType = $query->all();


        //get list type
        $typeList = Type::find()->all();
		return $this->render('index', [
        	'revenue' => $revenue,
        	'sales' => $sales,
        	'products' => $products,
        	'customers' => $customers,
        	'recentSO' => $recentSO,
        	'profit' =>$profit,
        	'inventory' => $inventory,
            'feature1MountProduct' => $feature1MountProduct,
            'profitByType' =>$profitByType,
            'typeList' => $typeList,
        ]);
	}
}
