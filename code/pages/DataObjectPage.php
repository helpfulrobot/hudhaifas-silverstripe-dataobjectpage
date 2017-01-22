<?php

class DataObjectPage
        extends Page {
    
}

class DataObjectPage_Controller
        extends Page_Controller {

    private static $url_handlers = array(
        '$ID' => 'index', // any action redirects to the index MUST be added at the end of the array
    );

    public function init() {
        parent::init();

        Requirements::css("dataobjectpage/css/dataobject.css");
    }

    public function index(SS_HTTPRequest $request) {
        if ($id = $request->param('ID')) {
            return $this->single($id);
        }

        $results = $this->getObjectsList();

        if ($query = $request->getVar('q')) {
            $results = $this->searchObjects($results, $query);
        }

        $paginated = PaginatedList::create(
                        $results, $request
                )->setPageLength($this->getPageLength())
                ->setPaginationGetVar('s');

        $data = array(
            'Results' => $paginated
        );

        if ($request->isAjax()) {
            return $this->customise($data)
                            ->renderWith('ObjectsList');
        }

        return $data;
    }

    private function single($id) {
        $single = $this->getObjectsList()->filter(array(
                    'ID' => $id
                ))->first();


        if ($single) {
            $this->preRenderSingle();

            return $this
                            ->customise(array(
                                'Single' => $single,
                                'Title' => $single->Title
                            ))
                            ->renderWith(array('DataObjectPage_Single', 'Page'));
        } else {
            return $this->httpError(404, 'That object could not be found!');
        }
    }

    public function ObjectSearchForm() {
        $data = $this->request->getVars();

        $form = Form::create(
                        $this, 'ObjectSearchForm', FieldList::create(
                                TextField::create('q')
                        ), FieldList::create(
                                FormAction::create('doObjectSearch')
                        )
        );

        $form
                ->disableSecurityToken()
                ->setFormMethod('GET')
                ->setFormAction($this->Link())
                ->setTemplate('Form_ObjectSearch')
                ->loadDataFrom($data);

        return $form;
    }

    protected function getObjectsList() {
        return DataObject::get();
    }

    protected function searchObjects($list, $keywords) {
        return $list->filter(array(
                    'Title:PartialMatch' => $keywords
        ));
    }

    protected function getPageLength() {
        return 12;
    }

    protected function getRelatedList() {
        return $this->getObjectsList()->sort('RAND()');
    }

    protected function getFiltersList() {
        $lists = array(
            array(
                'Title' => 'Categories',
                'Items' => $this->getObjectsList()
            ),
            array(
                'Title' => 'Categories',
                'Items' => $this->getObjectsList()->Limit(6)
            )
        );
        return new ArrayList($lists);
//        return null;
    }

    protected function preRenderList() {
        
    }

    protected function preRenderSingle() {
        
    }

}
