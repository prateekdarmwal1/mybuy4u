<?php

class SitemapController extends AppController {

    public $uses = ["Shop", "Ngo", "Other"];

    public function beforeFilter() {
        //$this->Auth->allow('generate_sitemap');
        parent::beforeFilter();
        
    }

    public function generate_sitemap() {
        $this->autoRender = false;
        $title = 'MyBuy4u: Site Map';
        $this->set(compact('title'));
        $url = "<urlset xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd\" xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">";

        $shopData = $this->Shop->find('all', [
            "fields" => ['ID', 'NAME'], "order" => "ID DESC"
        ]);
        if ($shopData) {
            foreach ($shopData as $data) {
                $url .= '
            <url>
                <loc>http://www.mybuy4u.com/local_business/template_mybuy4u/' . $data['Shop']['ID'] . '/Shop' .'</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
            }
        }

        // Real Estate
        $realEstateData = $this->RealEstate->find('all', [
            "fields" => ['ID', 'NAME'], "order" => "ID DESC"
        ]);
        if ($realEstateData) {
            foreach ($realEstateData as $data) {
                $url .= '
            <url>
                <loc>http://www.mybuy4u.com/real_estates/business_display/' . $data['RealEstate']['ID'] . '/RealEstate' .'</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
            }
        }

        // Company / Organization
        $companyOrganizationData = $this->CompanyOrganization->find('all', [
            "fields" => ['ID', 'NAME'], "order" => "ID DESC"
        ]);
        if ($companyOrganizationData) {
            foreach ($companyOrganizationData as $data) {
                $url .= '
            <url>
                <loc>http://www.mybuy4u.com/company_organizations/business_display/' . $data['CompanyOrganization']['ID'] . '/CompanyOrganization' .'</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
            }
        }

        // Product / Brand
        $productBrandData = $this->ProductBrand->find('all', [
            "fields" => ['ID', 'NAME'], "order" => "ID DESC"
        ]);
        if ($productBrandData) {
            foreach ($productBrandData as $data) {
                $url .= '
            <url>
                <loc>http://www.mybuy4u.com/brand_or_products/view_product/' . $data['ProductBrand']['ID'] . '/ProductBrand' .'</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
            }
        }

        // Event / Place
        $eventPlaceData = $this->EventPlace->find('all', [
            "fields" => ['ID', 'NAME'], "order" => "ID DESC"
        ]);
        if ($eventPlaceData) {
            foreach ($eventPlaceData as $data) {
                $url .= '
            <url>
                <loc>http://www.mybuy4u.com/event_or_places/view_product/' . $data['EventPlace']['ID'] . '/EventPlace' .'</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
            }
        }

        // Ngo
        $ngoData = $this->Ngo->find('all', [
            "fields" => ['ID', 'NAME'], "order" => "ID DESC"
        ]);
        if ($ngoData) {
            foreach ($ngoData as $data) {
                $url .= '
            <url>
                <loc>http://www.mybuy4u.com/ngo/template_mybuy4u/' . $data['Ngo']['ID'] . '/Ngo' .'</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
            }
        }

        // Other
        $otherData = $this->Other->find('all', [
            "fields" => ['ID', 'NAME'], "order" => "ID DESC"
        ]);
        if ($otherData) {
            foreach ($otherData as $data) {
                $url .= '
            <url>
                <loc>http://www.mybuy4u.com/others/view_product/' . $data['Other']['ID'] . '/Other' .'</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
            }
        }

        $url .= '
            <url>
                <loc>http://mybuy4u.com/homes</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
        $url .= '
            <url>
                <loc>http://mybuy4u.com/homes/real_estate_display</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
        $url .= '
            <url>
                <loc>http://mybuy4u.com/homes/company_org_display</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
        $url .= '
            <url>
                <loc>http://mybuy4u.com/homes/brand_product_display</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
        $url .= '
            <url>
                <loc>http://mybuy4u.com/homes/event_place_display</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
        $url .= '
            <url>
                <loc>http://mybuy4u.com/homes/ngo_display</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
        $url .= '
            <url>
                <loc>http://mybuy4u.com/homes/other_display</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
        $url .= '
            <url>
                <loc>http://mybuy4u.com/users/login</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
            $url .= '
            <url>
                <loc>http://mybuy4u.com/users/sign_up</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
            $url .= '
            <url>
                <loc>http://mybuy4u.com/local_business</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
            $url .= '
            <url>
                <loc>http://mybuy4u.com/homes/home_sale_detail</loc>
                <changefreq>always</changefreq>
                <priority>0.80</priority>
            </url>
            ';
        //pr($doctorData);
        $url .= "</urlset>";
        file_put_contents("sitemap.xml", $url);
            echo $url;
    }
}
